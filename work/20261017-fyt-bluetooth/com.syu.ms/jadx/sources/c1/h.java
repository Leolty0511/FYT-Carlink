package c1;

import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.RemoteException;
import o1.b0;
import o1.l0;
import o1.q;
import o1.u;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class h extends p implements q {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f487r = 5;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f488b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f489c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f490d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f491e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f492f = new int[5];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f493g = new int[5];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f494h = new int[5];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f495i = new int[5];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f496j = new int[5];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f497k = new int[5];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int[] f498l = new int[5];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int[] f499m = new int[5];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int[] f500n = new int[5];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f501o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public l0 f502p = new l0();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Runnable f503q = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h.Q2();
            if (h.f487r < 4) {
                h.this.U2(113, h.f487r);
                a.f.p().s(" ** sendCmd(0x71,mDelay) TICK  mDelay= " + h.f487r);
                if (h.f487r == 0) {
                    int unused = h.f487r = 5;
                }
            }
        }
    }

    public static /* synthetic */ int Q2() {
        int i2 = f487r;
        f487r = i2 - 1;
        return i2;
    }

    @Override // c1.p
    public void L2() {
        try {
            Z0(1, null, null, null);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // c1.p, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // c1.p
    public void N2() {
        z.a.f18165p.e(null);
    }

    @Override // c1.p, y.c
    public void P0(y.b bVar, int i2) {
    }

    public String S2(byte b2) {
        String[] strArr = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"};
        return ProxyProperties.LOCAL_EXCL_LIST + strArr[((b2 & 240) >> 4) & 255] + strArr[b2 & DhcpPacket.DHCP_DOMAIN_NAME & 255];
    }

    public final void T2(byte[] bArr, int i2, int i3) {
        this.f502p.a();
        byte b2 = bArr[i2];
        if (b2 == -1) {
            int[] iArr = c1.a.f409d;
            iArr[20] = this.f488b[i2 + 1] & 255;
            b.i(20, iArr[20]);
        } else {
            if (b2 == 33) {
                X2(i2 + 1, i3 - 1);
                return;
            }
            if (b2 == 65 || b2 == 97) {
                W2(i2 + 1, i3 - 1);
            } else {
                if (b2 != 113) {
                    return;
                }
                V2(i2 + 1, i3 - 1);
            }
        }
    }

    public final void U2(int i2, int... iArr) {
        int length = iArr.length + 5 + 1;
        byte[] bArr = new byte[length];
        bArr[0] = -86;
        bArr[1] = -79;
        bArr[2] = -95;
        bArr[3] = (byte) (length & 255);
        bArr[4] = (byte) (i2 & 255);
        for (int i3 = 0; i3 < iArr.length; i3++) {
            bArr[5 + i3] = (byte) iArr[i3];
        }
        int i4 = length - 1;
        bArr[i4] = 0;
        for (int i5 = 0; i5 < i4; i5++) {
            bArr[i4] = (byte) (bArr[i4] + bArr[i5]);
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i6 = 0; i6 < length; i6++) {
            stringBuffer.append(S2((byte) (bArr[i6] & 255)) + "  ");
        }
        stringBuffer.append("\n");
        z.a.f18155f.i(bArr);
        b0.h(bArr, 0, length);
    }

    public void V2(int i2, int i3) {
        byte[] bArr = this.f488b;
        int i4 = bArr[i2] & 255;
        if (i4 == 0 || i4 == 1 || i4 == 2 || i4 == 3) {
            int i5 = bArr[i2] & 255;
            int i6 = i2 + 2;
            int i7 = i2 + 1;
            int i8 = (bArr[i7] & 255) | ((bArr[i6] & 3) << 8);
            a.f.p().s("tire = " + i5 + "  DATA = " + (this.f488b[i7] & 3) + "  " + (this.f488b[i6] & 255));
            int[] iArr = this.f493g;
            iArr[i5] = i8;
            b.i(6, i5, iArr[i5]);
            int i9 = this.f488b[i2 + 3] & 255;
            this.f494h[i5] = i9;
            b.i(7, i5, i9);
            int i10 = i2 + 4;
            this.f495i[i5] = (this.f488b[i10] >> 4) & 1;
            b.i(8, i5, 1);
            int i11 = (this.f488b[i10] >> 5) & 1;
            this.f500n[i5] = i11;
            b.i(13, i5, i11);
            int i12 = (this.f488b[i10] >> 1) & 1;
            this.f496j[i5] = i12;
            b.i(9, i5, i12);
            int i13 = this.f488b[i10] & 1;
            this.f497k[i5] = i13;
            b.i(10, i5, i13);
            int i14 = (this.f488b[i10] >> 2) & 1;
            this.f498l[i5] = i14;
            b.i(11, i5, i14);
            int i15 = (this.f488b[i10] >> 3) & 1;
            this.f499m[i5] = i15;
            b.i(12, i5, i15);
            byte[] bArr2 = this.f488b;
            Y2((bArr2[i10] >> 7) & 1, (bArr2[i10] >> 4) & 1, (bArr2[i10] >> 3) & 1, (bArr2[i10] >> 2) & 1, (bArr2[i10] >> 1) & 1);
        }
    }

    public void W2(int i2, int i3) {
        byte[] bArr = this.f488b;
        int i4 = (bArr[i2] & 255) + 1;
        int i5 = ((bArr[i2 + 2] & 255) << 8) | (bArr[i2 + 1] & 255);
        this.f492f[i4] = i5;
        b.i(5, i4, i5);
        a.f.p().s(" ** tire = " + i4 + " **  value = " + i5);
    }

    public void X2(int i2, int i3) {
        byte[] bArr = this.f488b;
        if (bArr[i2] != 0) {
            return;
        }
        int[] iArr = c1.a.f409d;
        iArr[4] = bArr[i2 + 3] & 255;
        a.f.p().s(" ** Send = " + iArr[4] + "  " + iArr[2] + "  " + iArr[3]);
        b.i(4, iArr[4]);
        iArr[2] = (this.f488b[i2 + 1] & 255) * 10;
        b.i(2, iArr[2]);
        iArr[3] = (this.f488b[i2 + 2] & 255) * 10;
        a.f.p().s(" 000 DataTpms.DATA[U_LOW_PRESSURE_STATE] = " + iArr[3]);
        b.i(3, iArr[3]);
    }

    @Override // c1.p, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 == 18) {
            x.v(bVar, i2, this.f501o);
        }
        if (i2 == 20) {
            x.v(bVar, i2, c1.a.f409d[i2]);
            return;
        }
        switch (i2) {
            case 2:
                x.v(bVar, i2, c1.a.f409d[2]);
                break;
            case 3:
                x.v(bVar, i2, c1.a.f409d[3]);
                break;
            case 4:
                x.v(bVar, i2, c1.a.f409d[i2]);
                break;
            case 5:
                for (int i4 = 1; i4 < 5; i4++) {
                    x.v(bVar, i2, i4, this.f492f[i4]);
                }
                break;
            case 6:
                for (int i5 = 0; i5 < 4; i5++) {
                    x.v(bVar, i2, i5, this.f493g[i5]);
                }
                break;
            case 7:
                for (int i6 = 0; i6 < 4; i6++) {
                    x.v(bVar, i2, i6, this.f494h[i6]);
                }
                break;
            case 8:
                for (int i7 = 0; i7 < 4; i7++) {
                    x.v(bVar, i2, i7, this.f495i[i7]);
                }
                break;
            case 9:
                for (int i8 = 0; i8 < 4; i8++) {
                    x.v(bVar, i2, i8, this.f496j[i8]);
                }
                break;
            case 10:
                for (int i9 = 0; i9 < 4; i9++) {
                    x.v(bVar, i2, i9, this.f497k[i9]);
                }
                break;
            case 11:
                for (int i10 = 0; i10 < 4; i10++) {
                    x.v(bVar, i2, i10, this.f498l[i10]);
                }
                break;
            case 12:
                for (int i11 = 0; i11 < 4; i11++) {
                    x.v(bVar, i2, i11, this.f499m[i11]);
                }
                break;
            case 13:
                for (int i12 = 0; i12 < 4; i12++) {
                    x.v(bVar, i2, i12, this.f500n[i12]);
                }
                break;
        }
    }

    public void Y2(int i2, int i3, int i4, int i5, int i6) {
        if (this.f501o == 1 && c1.a.f411f == 1) {
            if ((i2 == 1 || i3 == 1 || i4 == 1 || i5 == 1 || i6 == 1) && !u.S("com.syu.tire")) {
                u.f("com.syu.tire");
            }
        }
    }

    @Override // c1.p, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                if (iArr != null && iArr.length > 0) {
                    U2(113, iArr[0]);
                    break;
                }
                break;
            case 1:
                U2(33, 0);
                break;
            case 2:
                if (iArr != null && iArr.length > 1) {
                    U2(49, iArr[0], iArr[1] / 10);
                    break;
                }
                break;
            case 3:
                if (iArr != null && iArr.length > 1) {
                    U2(49, iArr[0], iArr[1]);
                    break;
                }
                break;
            case 4:
                if (iArr != null && iArr.length > 0) {
                    U2(65, iArr[0]);
                    break;
                }
                break;
            case 5:
                if (iArr != null && iArr.length > 2) {
                    U2(81, iArr[0], iArr[1], iArr[2]);
                    break;
                }
                break;
            case 6:
                if (iArr != null && iArr.length > 0) {
                    U2(97, iArr[0]);
                    break;
                }
                break;
            case 7:
                if (M2(iArr, 1)) {
                    c1.a.f411f = iArr[0];
                }
                break;
            case 8:
                U2(17, 0);
                break;
            case 9:
                U2(129, 0);
                break;
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f489c + bArr.length > 1024) {
            this.f489c = 0;
            this.f490d = 0;
            this.f491e = 0;
        }
        System.arraycopy(bArr, 0, this.f488b, this.f489c, bArr.length);
        int length = this.f489c + bArr.length;
        this.f489c = length;
        int i4 = this.f491e;
        if (i4 != 0) {
            if (i4 >= length) {
                return;
            }
            byte b2 = this.f488b[0];
            int i5 = 1;
            while (true) {
                i3 = this.f491e;
                if (i5 >= i3) {
                    break;
                }
                b2 = (byte) (b2 + this.f488b[i5]);
                i5++;
            }
            byte[] bArr2 = this.f488b;
            if (b2 == bArr2[i3]) {
                T2(bArr2, 4, i3 - 4);
                this.f490d = this.f491e + 1;
            } else {
                this.f490d = 3;
            }
            this.f491e = 0;
        }
        int i6 = this.f489c - 3;
        while (true) {
            i2 = this.f490d;
            if (i2 >= i6) {
                break;
            }
            byte[] bArr3 = this.f488b;
            if (bArr3[i2] == -86 && bArr3[i2 + 1] == -95) {
                int i7 = bArr3[i2 + 3] & 255;
                this.f491e = i7;
                int i8 = i7 + (i2 - 1);
                this.f491e = i8;
                if (i8 >= this.f489c) {
                    this.f491e = i8 - i2;
                    break;
                }
                byte b3 = bArr3[i2];
                while (i2 < this.f491e) {
                    b3 = (byte) (b3 + this.f488b[i2]);
                    i2++;
                }
                a.f.p().s("checksum :" + ((int) b3) + " ,  DATA[mChecksumIndex] : " + ((int) this.f488b[this.f491e]));
                byte[] bArr4 = this.f488b;
                int i9 = this.f491e;
                if (b3 == bArr4[i9]) {
                    int i10 = this.f490d;
                    T2(bArr4, i10 + 4, (i9 - i10) - 4);
                    this.f490d = this.f491e;
                } else {
                    this.f490d += 2;
                }
                this.f491e = 0;
            }
            this.f490d++;
        }
        if (i2 != 0) {
            int i11 = this.f489c - i2;
            this.f489c = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f488b;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f490d = 0;
        }
    }
}
