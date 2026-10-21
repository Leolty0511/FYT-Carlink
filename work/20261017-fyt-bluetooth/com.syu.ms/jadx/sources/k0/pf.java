package k0;

import android.drm.DrmManagerClient;
import android.text.format.Time;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class pf extends lt implements o1.q {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f9181b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f9182c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f9183d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f9184e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Runnable f9185f = new a();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte f9186g = 10;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f9187h = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f9188i = new c();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Time time = new Time(Time.getCurrentTimezone());
            time.setToNow();
            pf.c3(new byte[]{83, 87, -128, 7, 6, (byte) (time.year + DrmManagerClient.ERROR_UNKNOWN), (byte) (time.month + 1), (byte) time.monthDay, (byte) time.hour, (byte) time.minute, (byte) time.second});
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            l0.b0.b(pf.this.f9188i);
            pf.this.f9186g = (byte) 5;
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            pf pfVar = pf.this;
            byte b2 = (byte) (pfVar.f9186g - 1);
            pfVar.f9186g = b2;
            if (b2 > 0) {
                z.k.s(227, 128, 1, 85);
            } else {
                l0.b0.p0(pfVar.f9188i);
                pf.this.f9186g = (byte) 5;
            }
        }
    }

    public static void c3(byte[] bArr) {
        if (bArr == null || bArr.length <= 2) {
            return;
        }
        byte b2 = 0;
        for (byte b3 : bArr) {
            for (int i2 = 0; i2 < 8; i2++) {
                byte b4 = (byte) (b2 << 1);
                b2 = (byte) (b4 ^ ((((b3 << i2) ^ b4) & 128) != 0 ? (byte) 9 : (byte) 0));
            }
        }
        byte[] bArr2 = new byte[bArr.length + 1];
        for (int i3 = 0; i3 < bArr.length; i3++) {
            bArr2[i3] = bArr[i3];
        }
        bArr2[bArr.length] = (byte) (b2 & 127);
        z.k.q(bArr2);
    }

    @Override // k0.lt, y.c
    public y.f M1(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return null;
    }

    @Override // k0.lt
    public void O2(int[] iArr) {
        if (iArr == null || iArr.length < 2) {
            return;
        }
        switch (iArr[0]) {
            case 33:
                if (iArr[1] == 0) {
                    if (nt.f8645g[10] == 1) {
                        a3(14);
                    }
                } else if (nt.f8645g[10] == 0) {
                    a3(14);
                }
                break;
            case 34:
                if (iArr[1] == 0) {
                    if (nt.f8645g[11] == 1) {
                        a3(12);
                    }
                } else if (nt.f8645g[11] == 0) {
                    a3(12);
                }
                break;
            case 36:
                if (iArr[1] == 0) {
                    if (nt.f8645g[77] == 5) {
                        a3(11);
                    }
                } else if (nt.f8645g[77] != 5) {
                    a3(11);
                }
                break;
            case 37:
                if (iArr[1] == 0) {
                    if (nt.f8645g[38] == 1) {
                        a3(13);
                    }
                } else if (nt.f8645g[38] == 0) {
                    a3(13);
                }
                break;
            case 38:
                if (iArr[1] == 0) {
                    if (nt.f8645g[12] == 1) {
                        a3(6);
                    }
                } else if (nt.f8645g[12] == 0) {
                    a3(5);
                }
                break;
            case 39:
                int i2 = iArr[1];
                if (i2 == -2) {
                    a3(4);
                    break;
                } else if (i2 == -1) {
                    a3(3);
                    break;
                }
                break;
            case 41:
                if (iArr[1] == 0) {
                    a3(2);
                } else {
                    a3(1);
                }
                break;
            case 42:
                if (iArr[1] == 0) {
                    a3(2);
                } else {
                    a3(1);
                }
                break;
        }
    }

    @Override // k0.lt
    public void S2() {
        mt mtVar = this.f7886a;
        mtVar.f8306a = null;
        mtVar.f8310e = 0;
        mtVar.f8311f = 0;
        mtVar.f8312g = 0;
        mtVar.f8314i = 1;
        u0.c.f17386m.a(this.f9187h, 1);
        qt.z(this.f9185f);
    }

    @Override // k0.lt
    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 != 33) {
            if (b2 != 48) {
                return;
            }
            qt.L(new String(bArr, i2 + 2, i3 - 2));
            return;
        }
        int i4 = bArr[i2 + 2] & 255;
        int i5 = bArr[i2 + 3] & 255;
        int i6 = bArr[i2 + 4] & 255;
        int i7 = bArr[i2 + 5] & 255;
        int i8 = i4 & 255;
        if (i8 == 0) {
            qt.y0(27, -1);
        } else if (i8 == 1) {
            qt.y0(27, -2);
        } else if (i8 != 17) {
            qt.y0(27, i8);
        } else {
            qt.y0(27, -3);
        }
        qt.y0(21, i5 & 15);
        qt.y0(77, i6 & 255);
        qt.y0(38, (i7 >> 7) & 1);
        qt.y0(12, (i7 >> 6) & 1);
        qt.y0(11, (i7 >> 5) & 1);
        qt.y0(10, (i7 >> 0) & 1);
    }

    @Override // k0.lt
    public void W2() {
        u0.c.f17386m.d(this.f9187h);
        l0.b0.p0(this.f9188i);
        qt.q0(this.f9185f);
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
        if (i2 == 0) {
            z.k.s(227, 130, 2, iArr[0], 1);
            return;
        }
        if (i2 == 1029 && T2(iArr, 2) && iArr[2] >= 0 && iArr[2] <= 650) {
            int iW = (iArr[1] * 4096) / a.f.w();
            int i3 = (iArr[2] * 4096) / 650;
            if (iArr[0] == 1) {
                iArr[0] = 17;
            } else {
                iArr[0] = 16;
            }
            c3(new byte[]{83, 87, -128, 6, 7, (byte) iArr[0], (byte) ((iW >> 8) & 255), (byte) (iW & 255), (byte) ((i3 >> 8) & 255), (byte) (i3 & 255)});
        }
    }

    public final void a3(int i2) {
        z.k.s(227, 130, 2, i2, 1);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f9182c + bArr.length > 1024) {
            this.f9182c = 0;
            this.f9183d = 0;
            this.f9184e = 0;
        }
        System.arraycopy(bArr, 0, this.f9181b, this.f9182c, bArr.length);
        int length = this.f9182c + bArr.length;
        this.f9182c = length;
        int i5 = this.f9184e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f9181b[2];
            int i6 = 3;
            while (true) {
                i4 = this.f9184e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f9181b[i6]);
                i6++;
            }
            byte b3 = (byte) ((b2 - 1) & 255);
            byte[] bArr2 = this.f9181b;
            if (b3 == bArr2[i4]) {
                nt.f8639d.U2(bArr2, 2, bArr2[2] + 2);
                this.f9183d = this.f9184e + 1;
            } else {
                this.f9183d = 2;
            }
            this.f9184e = 0;
        }
        int i7 = this.f9182c - 3;
        while (true) {
            i2 = this.f9183d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f9181b;
            if (bArr3[i2] == 83 && bArr3[i2 + 1] == 87) {
                if (this.f9184e > 512) {
                    this.f9184e = 0;
                } else {
                    int i8 = bArr3[i2 + 2] + i2 + 4;
                    this.f9184e = i8;
                    if (i8 >= this.f9182c) {
                        this.f9184e = i8 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 2];
                    int i9 = i2 + 3;
                    while (true) {
                        i3 = this.f9184e;
                        if (i9 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f9181b[i9]);
                        i9++;
                    }
                    byte b5 = (byte) ((b4 - 1) & 255);
                    byte[] bArr4 = this.f9181b;
                    if (b5 == bArr4[i3]) {
                        lt ltVar = nt.f8639d;
                        int i10 = this.f9183d;
                        ltVar.U2(bArr4, i10 + 2, bArr4[i10 + 2] + 2);
                        this.f9183d = this.f9184e;
                    } else {
                        this.f9183d++;
                    }
                    this.f9184e = 0;
                }
            }
            this.f9183d++;
        }
        if (i2 != 0) {
            int i11 = this.f9182c - i2;
            this.f9182c = i11;
            if (i11 != 0) {
                byte[] bArr5 = this.f9181b;
                System.arraycopy(bArr5, i2, bArr5, 0, i11);
            }
            this.f9183d = 0;
        }
    }
}
