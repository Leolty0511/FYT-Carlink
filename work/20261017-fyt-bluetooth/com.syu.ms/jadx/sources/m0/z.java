package m0;

import android.content.pm.PackageManager;
import android.util.Log;
import java.io.FileInputStream;
import java.io.InputStream;
import k0.nt;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class z extends m0.a implements o1.q {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte[] f13507k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13508l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13497a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13498b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13499c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13500d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13501e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f13502f = {0};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13503g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13504h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13505i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f13506j = new byte[64];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13509m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f13510n = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            z zVar = z.this;
            if (zVar.f13509m % 2 == 0) {
                if (zVar.f13503g == 0) {
                    z.R2(z.this);
                    if (z.this.f13505i == 8) {
                        z.this.f13505i = 0;
                        z.this.T2();
                    } else {
                        l0.z.f13137a.f(46, -32, 13, 1, 0, 0, PackageManager.INSTALL_PARSE_FAILED_BAD_PACKAGE_NAME, 0, 65, 66, 67, 68, 18, 52, 86, 120);
                        try {
                            Thread.sleep(100L);
                        } catch (Exception unused) {
                        }
                        l0.z.f13137a.f(s0.e(z.this.V2()));
                    }
                } else {
                    d.i(this);
                }
            }
            z zVar2 = z.this;
            int i2 = zVar2.f13509m + 1;
            zVar2.f13509m = i2;
            if (i2 > 2) {
                zVar2.f13509m = 1;
            }
        }
    }

    public static /* synthetic */ int R2(z zVar) {
        int i2 = zVar.f13505i;
        zVar.f13505i = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13503g == 0) {
            d.i(this.f13510n);
        }
        this.f13503g = -1;
        this.f13507k = null;
        b.f13172e = 0;
    }

    public byte[] N2(byte[] bArr) {
        int i2 = 0;
        for (byte b2 : bArr) {
            i2 += b2 & 255;
        }
        return new byte[]{(byte) ((i2 >> 24) & 255), (byte) ((i2 >> 16) & 255), (byte) ((i2 >> 8) & 255), (byte) (i2 & 255)};
    }

    public final void T2() {
        d.f();
    }

    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == -31) {
            this.f13503g = 1;
            X2(bArr[i2 + 2]);
        } else {
            if (b2 != -30) {
                return;
            }
            this.f13503g = 1;
        }
    }

    public byte[] V2() {
        byte[] bArr = new byte[12];
        bArr[0] = 46;
        bArr[1] = -32;
        bArr[2] = 9;
        bArr[3] = 2;
        int i2 = this.f13508l;
        bArr[4] = (byte) ((i2 >> 24) & 255);
        bArr[5] = (byte) ((i2 >> 16) & 255);
        bArr[6] = (byte) ((i2 >> 8) & 255);
        bArr[7] = (byte) (i2 & 255);
        for (int i3 = 0; i3 < 4; i3++) {
            bArr[i3 + 8] = N2(this.f13507k)[i3];
        }
        return bArr;
    }

    public final void W2() {
        byte[] bArr;
        byte[] bArr2;
        int i2 = this.f13508l;
        int i3 = this.f13504h;
        if (i2 - i3 > 0) {
            if (i2 - i3 > 64) {
                int i4 = 0;
                while (true) {
                    bArr2 = this.f13506j;
                    if (i4 >= bArr2.length) {
                        break;
                    }
                    bArr2[i4] = this.f13507k[this.f13504h + i4];
                    i4++;
                }
                this.f13504h += bArr2.length;
                bArr = new byte[68];
                bArr[0] = 46;
                bArr[1] = -32;
                bArr[2] = 65;
                bArr[3] = 3;
                int i5 = 0;
                while (true) {
                    byte[] bArr3 = this.f13506j;
                    if (i5 >= bArr3.length) {
                        break;
                    }
                    bArr[i5 + 4] = bArr3[i5];
                    i5++;
                }
            } else {
                int i6 = i2 - i3;
                byte[] bArr4 = new byte[i6 + 4];
                bArr4[0] = 46;
                bArr4[1] = -32;
                bArr4[2] = (byte) (i6 + 1);
                bArr4[3] = 4;
                for (int i7 = 0; i7 < i6; i7++) {
                    bArr4[i7 + 4] = this.f13507k[this.f13504h + i7];
                }
                this.f13504h = this.f13508l;
                bArr = bArr4;
            }
            this.f13502f = bArr;
            l0.z.f13137a.f(s0.e(bArr));
            d.j(2, 2);
            d.j(0, this.f13504h);
            d.j(1, this.f13508l);
        }
    }

    public final void X2(byte b2) {
        if (b2 == -127) {
            try {
                Thread.sleep(100L);
            } catch (Exception unused) {
                Log.d("CAN", "sleep exception");
            }
            W2();
            return;
        }
        if (b2 == 0) {
            d.j(2, 1);
            return;
        }
        if (b2 == 2) {
            d.j(2, 6);
            return;
        }
        if (b2 == 10) {
            l0.z.f13137a.f(46, 224, 1, 10);
            d.j(2, 3);
        } else {
            if (b2 != 12) {
                return;
            }
            if (nt.f8633a != 8716727) {
                l0.z.f13137a.f(s0.e(this.f13502f));
            }
            d.j(2, 7);
        }
    }

    /* JADX WARN: Code duplicated, block: B:36:0x005b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e2;
        if (i2 != 0 || strArr == null || strArr.length <= 0) {
            return;
        }
        InputStream inputStream = null;
        try {
            try {
                fileInputStream = new FileInputStream(strArr[0]);
                try {
                    int iAvailable = fileInputStream.available();
                    this.f13508l = iAvailable;
                    byte[] bArr = new byte[iAvailable];
                    this.f13507k = bArr;
                    fileInputStream.read(bArr);
                    try {
                        fileInputStream.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    b.f13172e = 1;
                    T2();
                    this.f13504h = 0;
                    this.f13503g = 0;
                    this.f13505i = 0;
                    d.b(this.f13510n);
                } catch (Exception e4) {
                    e2 = e4;
                    e2.printStackTrace();
                    d.j(2, 4);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e5) {
                            e5.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (Exception e6) {
                        e6.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e7) {
            fileInputStream = null;
            e2 = e7;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
                inputStream.close();
            }
            throw th;
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13499c + bArr.length > 1024) {
            this.f13499c = 0;
            this.f13500d = 0;
            this.f13501e = 0;
        }
        System.arraycopy(bArr, 0, this.f13498b, this.f13499c, bArr.length);
        int length = this.f13499c + bArr.length;
        this.f13499c = length;
        int i5 = this.f13501e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13498b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13501e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13498b[i6]);
                i6++;
            }
            byte b3 = (byte) (~b2);
            byte[] bArr2 = this.f13498b;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                this.f13500d = this.f13501e + 1;
            } else {
                this.f13500d = 1;
            }
            this.f13501e = 0;
        }
        int i7 = this.f13499c - 2;
        while (true) {
            i2 = this.f13500d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13498b;
            if (bArr3[i2] == 46) {
                int i8 = (bArr3[i2 + 2] & 255) + 3;
                this.f13501e = i8;
                int i9 = i8 + i2;
                this.f13501e = i9;
                if (i9 >= this.f13499c) {
                    this.f13501e = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f13501e;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f13498b[i10]);
                    i10++;
                }
                byte b5 = (byte) (~b4);
                byte[] bArr4 = this.f13498b;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f13500d;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    this.f13500d = this.f13501e;
                } else {
                    this.f13500d++;
                }
                this.f13501e = 0;
            }
            this.f13500d++;
        }
        if (i2 != 0) {
            int i12 = this.f13499c - i2;
            this.f13499c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f13498b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13500d = 0;
        }
    }
}
