package c1;

import android.media.videoeditor.MediaArtistNativeHelper;
import android.net.ProxyProperties;
import android.net.dhcp.DhcpPacket;
import android.os.RemoteException;
import o1.l0;
import o1.q;
import o1.u;
import o1.x;

/* JADX INFO: loaded from: classes2.dex */
public class f extends p implements q {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f450r = 5;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f451b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f452c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f453d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f454e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f455f = new int[5];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f456g = new int[5];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f457h = new int[5];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f458i = new int[5];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int[] f459j = new int[5];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int[] f460k = new int[5];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int[] f461l = new int[5];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int[] f462m = new int[5];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int[] f463n = new int[5];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f464o = 1;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public l0 f465p = new l0();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Runnable f466q = new b();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.this.X2(100, 0);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            f.R2();
            if (f.f450r == 0) {
                try {
                    f.this.Z0(0, null, null, null);
                } catch (RemoteException e2) {
                    e2.printStackTrace();
                }
                int unused = f.f450r = 5;
            }
            int i2 = !f.this.f465p.c(MediaArtistNativeHelper.AudioSamplingFrequency.FREQ_8000) ? 1 : 0;
            if (f.this.f464o != i2) {
                f.this.f464o = i2;
                c1.b.i(18, f.this.f464o);
            }
        }
    }

    public static /* synthetic */ int R2() {
        int i2 = f450r;
        f450r = i2 - 1;
        return i2;
    }

    @Override // c1.p
    public void L2() {
        c1.b.c(this.f466q);
    }

    @Override // c1.p, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // c1.p
    public void N2() {
        z.a.f18165p.e(null);
        c1.b.e(this.f466q);
    }

    @Override // c1.p, y.c
    public void P0(y.b bVar, int i2) {
    }

    public String V2(byte b2) {
        String[] strArr = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"};
        return ProxyProperties.LOCAL_EXCL_LIST + strArr[((b2 & 240) >> 4) & 255] + strArr[b2 & DhcpPacket.DHCP_DOMAIN_NAME & 255];
    }

    public final void W2(byte[] bArr, int i2, int i3) {
        this.f465p.a();
        switch (bArr[i2]) {
            case 98:
                a3(i2 + 1, i3 - 1);
                break;
            case 99:
                Y2(i2 + 1, i3 - 1);
                break;
            case 100:
                Z2(i2 + 1, i3 - 1);
                break;
            case 101:
                if (i3 <= 2) {
                    byte[] bArr2 = this.f451b;
                    int i4 = i2 + 1;
                    if (bArr2[i4] == 170) {
                        c1.a.f409d[16] = 1;
                        c1.b.i(16, 1);
                    } else if (bArr2[i4] == 255) {
                        c1.a.f409d[16] = 0;
                        c1.b.i(16, 0);
                    }
                } else {
                    b3(i2 + 1, i3 - 1);
                    o1.k.a().postDelayed(new a(), 500L);
                }
                break;
            case 102:
                if (bArr[i2 + 1] == 170) {
                    c1.a.f409d[1] = 1;
                    c1.b.i(1, 1);
                }
                break;
        }
    }

    public final void X2(int i2, int... iArr) {
        int length = iArr.length + 5 + 1;
        byte[] bArr = new byte[length];
        bArr[0] = -86;
        bArr[1] = 65;
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
            stringBuffer.append(V2((byte) (bArr[i6] & 255)) + "  ");
        }
        stringBuffer.append("\n");
        z.a.f18155f.i(bArr);
    }

    @Override // c1.p, y.c
    public void Y1(y.b bVar, int i2, int i3) {
        if (i2 == 18) {
            x.v(bVar, i2, this.f464o);
        }
        switch (i2) {
            case 2:
                x.v(bVar, i2, c1.a.f409d[2]);
                break;
            case 3:
                x.v(bVar, i2, c1.a.f409d[10]);
                break;
            case 4:
                x.v(bVar, i2, c1.a.f409d[i2]);
                break;
            case 5:
                for (int i4 = 1; i4 < 5; i4++) {
                    x.v(bVar, i2, i4, this.f455f[i4]);
                }
                break;
            case 6:
                for (int i5 = 1; i5 < 5; i5++) {
                    x.v(bVar, i2, i5, this.f456g[i5]);
                }
                break;
            case 7:
                for (int i6 = 1; i6 < 5; i6++) {
                    x.v(bVar, i2, i6, this.f457h[i6]);
                }
                break;
            case 8:
                for (int i7 = 1; i7 < 5; i7++) {
                    x.v(bVar, i2, i7, this.f458i[i7]);
                }
                break;
            case 9:
                for (int i8 = 1; i8 < 5; i8++) {
                    x.v(bVar, i2, i8, this.f459j[i8]);
                }
                break;
            case 10:
                for (int i9 = 1; i9 < 5; i9++) {
                    x.v(bVar, i2, i9, this.f460k[i9]);
                }
                break;
            case 11:
                for (int i10 = 1; i10 < 5; i10++) {
                    x.v(bVar, i2, i10, this.f461l[i10]);
                }
                break;
            case 12:
                for (int i11 = 1; i11 < 5; i11++) {
                    x.v(bVar, i2, i11, this.f462m[i11]);
                }
                break;
            case 13:
                for (int i12 = 1; i12 < 5; i12++) {
                    x.v(bVar, i2, i12, this.f463n[i12]);
                }
                break;
        }
    }

    public void Y2(int i2, int i3) {
        byte[] bArr = this.f451b;
        int i4 = bArr[i2] & 255;
        if (i4 == 0) {
            if (i3 != 2 && i3 > 2) {
                int i5 = bArr[i2 + 1] & 255;
                int i6 = (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] & 3) << 8);
                int[] iArr = this.f456g;
                iArr[i5] = i6;
                c1.b.i(6, i5, iArr[i5]);
                int i7 = (this.f451b[i2 + 4] & 255) - 50;
                this.f457h[i5] = i7;
                c1.b.i(7, i5, i7);
                int i8 = i2 + 5;
                int i9 = (this.f451b[i8] >> 7) & 1;
                this.f458i[i5] = i9;
                c1.b.i(8, i5, i9);
                int i10 = (this.f451b[i8] >> 6) & 1;
                this.f463n[i5] = i10;
                c1.b.i(13, i5, i10);
                int i11 = (this.f451b[i8] >> 4) & 1;
                this.f459j[i5] = i11;
                c1.b.i(9, i5, i11);
                int i12 = (this.f451b[i8] >> 3) & 1;
                this.f460k[i5] = i12;
                c1.b.i(10, i5, i12);
                int i13 = (this.f451b[i8] >> 2) & 1;
                this.f461l[i5] = i13;
                c1.b.i(11, i5, i13);
                int i14 = (this.f451b[i8] >> 1) & 1;
                this.f462m[i5] = i14;
                c1.b.i(12, i5, i14);
                byte[] bArr2 = this.f451b;
                c3((bArr2[i8] >> 7) & 1, (bArr2[i8] >> 4) & 1, (bArr2[i8] >> 3) & 1, (bArr2[i8] >> 2) & 1, (bArr2[i8] >> 1) & 1);
                return;
            }
            return;
        }
        if (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4) {
            int i15 = bArr[i2 + 1] & 255;
            int i16 = (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] & 3) << 8);
            int[] iArr2 = this.f456g;
            iArr2[i15] = i16;
            c1.b.i(6, i15, iArr2[i15]);
            int i17 = (this.f451b[i2 + 4] & 255) - 50;
            this.f457h[i15] = i17;
            c1.b.i(7, i15, i17);
            int i18 = i2 + 5;
            int i19 = (this.f451b[i18] >> 7) & 1;
            this.f458i[i15] = i19;
            c1.b.i(8, i15, i19);
            int i20 = (this.f451b[i18] >> 6) & 1;
            this.f463n[i15] = i20;
            c1.b.i(13, i15, i20);
            int i21 = (this.f451b[i18] >> 4) & 1;
            this.f459j[i15] = i21;
            c1.b.i(9, i15, i21);
            int i22 = (this.f451b[i18] >> 3) & 1;
            this.f460k[i15] = i22;
            c1.b.i(10, i15, i22);
            int i23 = (this.f451b[i18] >> 2) & 1;
            this.f461l[i15] = i23;
            c1.b.i(11, i15, i23);
            int i24 = (this.f451b[i18] >> 1) & 1;
            this.f462m[i15] = i24;
            c1.b.i(12, i15, i24);
            byte[] bArr3 = this.f451b;
            c3((bArr3[i18] >> 7) & 1, (bArr3[i18] >> 4) & 1, (bArr3[i18] >> 3) & 1, (bArr3[i18] >> 2) & 1, (bArr3[i18] >> 1) & 1);
        }
    }

    @Override // c1.p, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) {
        switch (i2) {
            case 0:
                X2(99, 0);
                break;
            case 1:
                X2(98, 0);
                break;
            case 2:
                X2(98, 1, iArr[0], iArr[1], iArr[2], iArr[3]);
                break;
            case 3:
                X2(98, 6, iArr[0]);
                break;
            case 4:
                X2(100, iArr[0]);
                break;
            case 5:
                if (iArr != null && iArr.length > 0) {
                    int length = iArr.length;
                    int[] iArr2 = new int[length];
                    for (int i3 = 0; i3 < length; i3++) {
                        iArr2[i3] = iArr[i3];
                    }
                    X2(101, iArr2);
                    break;
                }
                break;
            case 6:
                X2(102, new int[0]);
                break;
            case 7:
                if (M2(iArr, 1)) {
                    c1.a.f411f = iArr[0];
                }
                break;
        }
    }

    public void Z2(int i2, int i3) {
        byte[] bArr = this.f451b;
        int i4 = bArr[i2] & 255;
        if (i4 == 0) {
            if (i3 != 2 && i3 > 2) {
                int i5 = bArr[i2 + 1] & 255;
                int i6 = (bArr[i2 + 5] & 255) | ((bArr[i2 + 2] & 255) << 24) | ((bArr[i2 + 3] & 255) << 16) | ((bArr[i2 + 4] & 255) << 8);
                this.f455f[i5] = i6;
                c1.b.i(5, i5, i6);
                return;
            }
            return;
        }
        if (i4 == 1 || i4 == 2 || i4 == 3 || i4 == 4) {
            int i7 = bArr[i2] & 255;
            int i8 = (bArr[i2 + 5] & 255) | ((bArr[i2 + 2] & 255) << 24) | ((bArr[i2 + 3] & 255) << 16) | ((bArr[i2 + 4] & 255) << 8);
            this.f455f[i7] = i8;
            c1.b.i(5, i7, i8);
        }
    }

    public void a3(int i2, int i3) {
        byte[] bArr = this.f451b;
        if (bArr[i2] != 0) {
            return;
        }
        int i4 = ((bArr[i2 + 2] << 8) & 65280) | (bArr[i2 + 3] & 255);
        int[] iArr = c1.a.f409d;
        int i5 = i2 + 1;
        iArr[4] = bArr[i5] & 255;
        iArr[2] = i4;
        int i6 = (bArr[i2 + 5] & 255) | (65280 & (bArr[i2 + 4] << 8));
        iArr[3] = i6;
        c1.b.i(4, bArr[i5] & 255);
        c1.b.i(2, i4);
        c1.b.i(3, i6);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f452c + bArr.length > 1024) {
            this.f452c = 0;
            this.f453d = 0;
            this.f454e = 0;
        }
        System.arraycopy(bArr, 0, this.f451b, this.f452c, bArr.length);
        int length = this.f452c + bArr.length;
        this.f452c = length;
        int i5 = this.f454e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f451b[0];
            int i6 = 1;
            while (true) {
                i4 = this.f454e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f451b[i6]);
                i6++;
            }
            byte[] bArr2 = this.f451b;
            if (b2 == bArr2[i4]) {
                W2(bArr2, 4, i4 - 4);
                this.f453d = this.f454e + 1;
            } else {
                this.f453d = 3;
            }
            this.f454e = 0;
        }
        int i7 = this.f452c - 3;
        while (true) {
            i2 = this.f453d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f451b;
            if (bArr3[i2] == -86 && bArr3[i2 + 1] == -95 && bArr3[i2 + 2] == 65) {
                int i8 = bArr3[i2 + 3] & 255;
                this.f454e = i8;
                int i9 = i8 + (i2 - 1);
                this.f454e = i9;
                if (i9 >= this.f452c) {
                    this.f454e = i9 - i2;
                    break;
                }
                byte b3 = bArr3[i2];
                while (true) {
                    i3 = this.f454e;
                    if (i2 >= i3) {
                        break;
                    }
                    b3 = (byte) (b3 + this.f451b[i2]);
                    i2++;
                }
                byte[] bArr4 = this.f451b;
                if (b3 == bArr4[i3]) {
                    int i10 = this.f453d;
                    W2(bArr4, i10 + 4, (i3 - i10) - 4);
                    this.f453d = this.f454e;
                } else {
                    this.f453d += 2;
                }
                this.f454e = 0;
            }
            this.f453d++;
        }
        if (i2 != 0) {
            int i11 = this.f452c - i2;
            this.f452c = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f451b;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f453d = 0;
        }
    }

    public void b3(int i2, int i3) {
        byte[] bArr = this.f451b;
        int i4 = ((bArr[i2 + 1] & 255) << 24) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 8) | (bArr[i2 + 4] & 255);
        switch (bArr[i2]) {
            case 17:
                this.f455f[0] = i4;
                c1.b.i(5, 1, i4);
                break;
            case 18:
                this.f455f[1] = i4;
                c1.b.i(5, 2, i4);
                break;
            case 19:
                this.f455f[2] = i4;
                c1.b.i(5, 3, i4);
                break;
            case 20:
                this.f455f[3] = i4;
                c1.b.i(5, 4, i4);
                break;
        }
    }

    public void c3(int i2, int i3, int i4, int i5, int i6) {
        if (this.f464o == 1 && c1.a.f411f == 1) {
            if ((i2 == 1 || i3 == 1 || i4 == 1 || i5 == 1 || i6 == 1) && !u.S("com.syu.tire")) {
                u.f("com.syu.tire");
            }
        }
    }
}
