package c1;

import android.net.dhcp.DhcpPacket;
import java.util.HashMap;
import o1.g0;
import o1.p0;
import o1.q;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class l extends p implements q {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f542h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f543i;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f536b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f537c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f538d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f539e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f540f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f541g = true;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public g0 f544j = new g0(getClass().getName(), 4);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f545k = new int[4];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public HashMap<Integer, Integer> f546l = new HashMap<>();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public HashMap<Integer, Integer> f547m = new HashMap<>();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public HashMap<Integer, Integer> f548n = new HashMap<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public HashMap<Integer, Integer> f549o = new HashMap<>();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public HashMap<Integer, Integer> f550p = new HashMap<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public HashMap<Integer, Integer> f551q = new HashMap<>();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f552r = new a();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f553s = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 == 0) {
                for (int i2 = 0; i2 < l.this.f545k.length; i2++) {
                    l.this.f546l.put(Integer.valueOf(l.this.f545k[i2]), 0);
                    l.this.f547m.put(Integer.valueOf(l.this.f545k[i2]), 0);
                    l.this.f548n.put(Integer.valueOf(l.this.f545k[i2]), 0);
                    l.this.f549o.put(Integer.valueOf(l.this.f545k[i2]), 0);
                    l.this.f550p.put(Integer.valueOf(l.this.f545k[i2]), 0);
                    l.this.f551q.put(Integer.valueOf(l.this.f545k[i2]), 0);
                }
            }
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u0.b.f17306a0 != 0) {
                if (l.this.f542h != 0) {
                    l.this.Z2(0);
                } else {
                    l.this.f542h = 1;
                }
                l.this.c3(85, 0, 2, 7, 255, 255, 255);
            }
        }
    }

    @Override // c1.p
    public void L2() {
        c1.b.c(this.f553s);
        this.f544j.a();
        init();
        u0.c.f17386m.a(this.f552r, 0);
    }

    @Override // c1.p, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // c1.p
    public void N2() {
        c1.b.e(this.f553s);
        this.f544j.j();
        u0.c.f17386m.d(this.f552r);
    }

    @Override // c1.p, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        switch (i2) {
            case 0:
                x.v(bVar, i2, this.f543i);
                break;
            case 1:
                for (int i4 = 0; i4 < 4; i4++) {
                    x.v(bVar, i2, i4, this.f545k[i4]);
                }
                break;
            case 2:
                for (int i5 = 0; i5 < 4; i5++) {
                    int[] iArr = this.f545k;
                    x.v(bVar, i2, iArr[i5], this.f546l.get(Integer.valueOf(iArr[i5])).intValue());
                }
                break;
            case 3:
                for (int i6 = 0; i6 < 4; i6++) {
                    int[] iArr2 = this.f545k;
                    x.v(bVar, i2, iArr2[i6], this.f547m.get(Integer.valueOf(iArr2[i6])).intValue());
                }
                break;
            case 4:
                for (int i7 = 0; i7 < 4; i7++) {
                    int[] iArr3 = this.f545k;
                    x.v(bVar, i2, iArr3[i7], this.f548n.get(Integer.valueOf(iArr3[i7])).intValue());
                }
                break;
            case 5:
                for (int i8 = 0; i8 < 4; i8++) {
                    int[] iArr4 = this.f545k;
                    x.v(bVar, i2, iArr4[i8], this.f549o.get(Integer.valueOf(iArr4[i8])).intValue());
                }
                break;
            case 6:
                for (int i9 = 0; i9 < 4; i9++) {
                    int[] iArr5 = this.f545k;
                    x.v(bVar, i2, iArr5[i9], this.f550p.get(Integer.valueOf(iArr5[i9])).intValue());
                }
                break;
            case 7:
                for (int i10 = 0; i10 < 4; i10++) {
                    int[] iArr6 = this.f545k;
                    x.v(bVar, i2, iArr6[i10], this.f551q.get(Integer.valueOf(iArr6[i10])).intValue());
                }
                break;
            case 8:
                if (a3()) {
                    x.v(bVar, i2, 1);
                } else {
                    x.v(bVar, i2, 0);
                }
                break;
        }
    }

    @Override // c1.p, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        if (i2 == 0) {
            if (M2(iArr, 0)) {
                this.f540f = iArr[0];
                this.f541g = false;
                return;
            }
            return;
        }
        if (i2 == 1) {
            if (M2(iArr, 0)) {
                this.f544j.g(0, this.f545k[0]);
                this.f544j.g(1, this.f545k[1]);
                this.f544j.g(2, this.f545k[2]);
                this.f544j.g(3, this.f545k[3]);
                this.f541g = true;
                return;
            }
            return;
        }
        if (i2 != 2) {
            return;
        }
        this.f544j.g(0, 0);
        this.f544j.g(1, 0);
        this.f544j.g(2, 0);
        this.f544j.g(3, 0);
        int i3 = 0;
        while (true) {
            int[] iArr2 = this.f545k;
            if (i3 >= iArr2.length) {
                this.f541g = true;
                return;
            } else {
                iArr2[i3] = 0;
                c1.b.i(1, i3, iArr2[i3]);
                i3++;
            }
        }
    }

    public final void Z2(int i2) {
        if (this.f543i != i2) {
            this.f543i = i2;
            c1.b.i(0, i2);
        }
    }

    public final boolean a3() {
        int[] iArr = this.f545k;
        if (iArr[0] != iArr[1] && iArr[0] != iArr[2] && iArr[0] != iArr[3]) {
            return true;
        }
        if (iArr[1] != iArr[0] && iArr[1] != iArr[2] && iArr[1] != iArr[3]) {
            return true;
        }
        if (iArr[2] == iArr[0] || iArr[2] == iArr[1] || iArr[2] == iArr[3]) {
            return (iArr[3] == iArr[0] || iArr[3] == iArr[1] || iArr[3] == iArr[2]) ? false : true;
        }
        return true;
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
        } else {
            z1(bArr, 0, bArr.length);
        }
    }

    public final void b3(byte[] bArr, int i2, int i3) {
        this.f542h = 0;
        Z2(1);
        if (bArr[i2] == 0 && bArr[i2 + 1] == 2 && bArr[i2 + 2] == 7) {
            int i4 = i2 + 5;
            String.format("Ver %d.%d", Integer.valueOf((bArr[i4] >> 4) & 15), Integer.valueOf(bArr[i4] & DhcpPacket.DHCP_DOMAIN_NAME));
            return;
        }
        int iD = p0.d(bArr[i2 + 3], bArr[i2 + 4], bArr[i2 + 5]);
        if (!this.f541g) {
            int i5 = i2 + 2;
            if (((bArr[i5] >> 2) & 3) == 2 || ((bArr[i5] >> 2) & 3) == 3) {
                int[] iArr = this.f545k;
                int i6 = this.f540f;
                if (iArr[i6] != iD) {
                    iArr[i6] = iD;
                    c1.b.i(1, i6, iD);
                }
            }
        }
        int i7 = bArr[i2] & 255;
        this.f546l.put(Integer.valueOf(iD), Integer.valueOf(i7));
        c1.b.i(2, iD, i7);
        int i8 = bArr[i2 + 1] & 255;
        this.f547m.put(Integer.valueOf(iD), Integer.valueOf(i8));
        c1.b.i(3, iD, i8);
        int i9 = i2 + 2;
        int i10 = (bArr[i9] >> 6) & 3;
        this.f548n.put(Integer.valueOf(iD), Integer.valueOf(i10));
        c1.b.i(4, iD, i10);
        int i11 = (bArr[i9] >> 4) & 3;
        this.f549o.put(Integer.valueOf(iD), Integer.valueOf(i11));
        c1.b.i(5, iD, i11);
        int i12 = (bArr[i9] >> 2) & 3;
        this.f550p.put(Integer.valueOf(iD), Integer.valueOf(i12));
        c1.b.i(6, iD, i12);
        int i13 = bArr[i9] & 3;
        this.f551q.put(Integer.valueOf(iD), Integer.valueOf(i13));
        c1.b.i(7, iD, i13);
    }

    public final void c3(int... iArr) {
        int i2;
        int length = iArr.length + 1;
        byte[] bArr = new byte[length];
        int i3 = 0;
        while (true) {
            i2 = length - 1;
            if (i3 >= i2) {
                break;
            }
            bArr[i3] = (byte) iArr[i3];
            i3++;
        }
        byte b2 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            b2 = (byte) (b2 + bArr[i4]);
        }
        bArr[i2] = (byte) (-b2);
        z.a.f18155f.i(bArr);
    }

    public final void init() {
        int i2 = 0;
        this.f545k[0] = this.f544j.d(0, 0);
        this.f545k[1] = this.f544j.d(1, 0);
        this.f545k[2] = this.f544j.d(2, 0);
        this.f545k[3] = this.f544j.d(3, 0);
        while (true) {
            int[] iArr = this.f545k;
            if (i2 >= iArr.length) {
                return;
            }
            this.f546l.put(Integer.valueOf(iArr[i2]), 0);
            this.f547m.put(Integer.valueOf(this.f545k[i2]), 0);
            this.f548n.put(Integer.valueOf(this.f545k[i2]), 0);
            this.f549o.put(Integer.valueOf(this.f545k[i2]), 0);
            this.f550p.put(Integer.valueOf(this.f545k[i2]), 0);
            this.f551q.put(Integer.valueOf(this.f545k[i2]), 0);
            i2++;
        }
    }

    public void z1(byte[] bArr, int i2, int i3) {
        int i4;
        int i5;
        int i6;
        if (this.f537c + i3 > 1024) {
            this.f537c = 0;
            this.f538d = 0;
            this.f539e = 0;
        }
        System.arraycopy(bArr, i2, this.f536b, this.f537c, i3);
        int i7 = this.f537c + i3;
        this.f537c = i7;
        int i8 = this.f539e;
        if (i8 != 0) {
            if (i8 >= i7) {
                return;
            }
            byte b2 = this.f536b[0];
            int i9 = 1;
            while (true) {
                i6 = this.f539e;
                if (i9 >= i6) {
                    break;
                }
                b2 = (byte) (b2 + this.f536b[i9]);
                i9++;
            }
            byte b3 = (byte) (-b2);
            byte[] bArr2 = this.f536b;
            if (b3 == bArr2[i6]) {
                b3(bArr2, 1, i6 - 1);
                this.f538d = this.f539e + 1;
            } else {
                this.f538d = 1;
            }
            this.f539e = 0;
        }
        int i10 = this.f537c;
        while (true) {
            i4 = this.f538d;
            if (i4 >= i10) {
                break;
            }
            byte[] bArr3 = this.f536b;
            if (bArr3[i4] == 85) {
                int i11 = i4 + 7;
                this.f539e = i11;
                if (i11 >= this.f537c) {
                    this.f539e = i11 - i4;
                    break;
                }
                byte b4 = bArr3[i4];
                while (true) {
                    i4++;
                    i5 = this.f539e;
                    if (i4 >= i5) {
                        break;
                    } else {
                        b4 = (byte) (b4 + this.f536b[i4]);
                    }
                }
                byte b5 = (byte) (-b4);
                byte[] bArr4 = this.f536b;
                if (b5 == bArr4[i5]) {
                    int i12 = this.f538d;
                    b3(bArr4, i12 + 1, (i5 - i12) - 1);
                    this.f538d = this.f539e;
                } else {
                    this.f538d++;
                }
                this.f539e = 0;
            }
            this.f538d++;
        }
        if (i4 != 0) {
            int i13 = this.f537c - i4;
            this.f537c = i13;
            if (i13 != 0) {
                byte[] bArr5 = this.f536b;
                System.arraycopy(bArr5, i4, bArr5, 0, i13);
            }
            this.f538d = 0;
        }
    }
}
