package m0;

import android.util.Log;
import java.io.FileInputStream;
import o1.e0;

/* JADX INFO: loaded from: classes2.dex */
public class p extends m0.a implements o1.q {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte[] f13354k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13356m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13344a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13345b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13346c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13347d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13348e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13349f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13350g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13351h = 128;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f13352i = new byte[128 + 2];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f13353j = new byte[64];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte[] f13355l = new byte[10];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13357n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte[] f13358o = {0};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f13359p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f13360q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f13361r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f13362s = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.d("SOUL", "mUpgradeStep =" + p.this.f13349f);
            if (p.this.f13349f != 0) {
                d.i(this);
            } else {
                p pVar = p.this;
                pVar.S2(0, 234, 2, (pVar.f13357n >> 8) & 255, p.this.f13357n & 255);
            }
        }
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        this.f13349f = -1;
        this.f13354k = null;
        b.f13172e = 0;
    }

    public final void P2() {
        e0 e0Var = z.a.f18151b;
        e0Var.i(z.k.b(1, 86, 170));
        e0Var.i(z.k.b(1, 86, 85));
    }

    public void Q2(byte[] bArr, int i2, int i3) {
        Log.d("SOUL", "SOUL :" + o1.b0.d(bArr, i2, i3));
        int i4 = i2 + 1;
        byte b2 = bArr[i4];
        if (b2 == -21) {
            this.f13349f = 1;
            R2(bArr, i4, i3 - 1);
        } else {
            if (b2 != -19) {
                return;
            }
            R2(bArr, i4, i3 - 1);
        }
    }

    public final void R2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 != -21) {
            if (b2 != -19) {
                return;
            }
            int i4 = ((bArr[i2 + 3] & 255) | (((bArr[i2 + 2] & 255) << 8) & 65280)) + 1;
            this.f13361r = i4;
            byte[] bArr2 = this.f13352i;
            bArr2[0] = (byte) ((i4 >> 8) & 255);
            bArr2[1] = (byte) (i4 & 255);
            System.arraycopy(this.f13354k, i4 * 128, bArr2, 2, 128);
            int i5 = this.f13361r;
            int i6 = (i5 + 1) & 65535;
            int i7 = this.f13357n;
            if (i6 == (65535 & i7)) {
                d.j(2, 3);
                int i8 = this.f13357n;
                d.j(0, (i8 * 100) / i8);
            } else {
                d.j(0, (i5 * 100) / i7);
            }
            T2(236, 130, this.f13352i);
            return;
        }
        int i9 = i2 + 2;
        if (bArr[i9] == 0) {
            d.j(2, 4);
            return;
        }
        if (bArr[i9] != 1) {
            if (bArr[i9] == 2) {
                d.j(2, 3);
                int i10 = this.f13357n;
                d.j(0, (i10 * 100) / i10);
                return;
            }
            return;
        }
        d.j(2, 1);
        byte[] bArr3 = this.f13352i;
        bArr3[0] = 0;
        bArr3[1] = 0;
        System.arraycopy(this.f13354k, this.f13361r * 128, bArr3, 2, 128);
        d.j(0, (this.f13361r * 100) / this.f13357n);
        T2(236, 130, this.f13352i);
    }

    public void S2(int... iArr) {
        int i2;
        int length = iArr.length + 3;
        int[] iArr2 = new int[length];
        iArr2[0] = 233;
        iArr2[1] = 46;
        int i3 = 2;
        while (true) {
            i2 = length - 1;
            if (i3 >= i2) {
                break;
            }
            iArr2[i3] = iArr[i3 - 2];
            i3++;
        }
        iArr2[i2] = 0;
        for (int i4 = 1; i4 < iArr.length; i4++) {
            iArr2[i2] = iArr2[i2] + iArr[i4];
        }
        iArr2[i2] = iArr2[i2] ^ 255;
        l0.a aVar = l0.z.f13137a;
        l0.a.d(iArr2);
    }

    public final void T2(int i2, int i3, byte[] bArr) {
        int length = bArr.length + 6;
        int[] iArr = new int[length];
        iArr[0] = -23;
        iArr[1] = 46;
        int i4 = 2;
        iArr[2] = 0;
        iArr[3] = (byte) i2;
        iArr[4] = -126;
        int length2 = bArr.length;
        for (int i5 = 0; i5 < length2; i5++) {
            iArr[5 + i5] = bArr[i5];
        }
        while (true) {
            int i6 = length - 1;
            if (i4 >= i6) {
                iArr[i6] = iArr[i6] ^ 255;
                l0.a aVar = l0.z.f13137a;
                l0.a.d(iArr);
                return;
            }
            iArr[i6] = iArr[i6] + (iArr[i4] & 255);
            i4++;
        }
    }

    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        if (i2 != 0) {
            return;
        }
        Log.d("SOUL", "C_UP_FILE_PATH");
        P2();
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(strArr[0]);
                try {
                    this.f13359p = fileInputStream2.available();
                    Log.d("SOUL", "size = " + this.f13359p);
                    int i3 = this.f13359p;
                    if (i3 == 0) {
                        Log.d("SOUL", "size == 0 or not 136*n");
                        a.f.p().s("size == 0 or not 136*n");
                        d.j(2, 5);
                        try {
                            fileInputStream2.close();
                            return;
                        } catch (Exception e2) {
                            e2.printStackTrace();
                            return;
                        }
                    }
                    if (i3 > 2097152) {
                        Log.d("SOUL", "to large");
                        a.f.p().s("to large");
                        d.j(2, 6);
                        try {
                            fileInputStream2.close();
                            return;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    }
                    a.f.p().s("size = " + this.f13359p);
                    int i4 = this.f13359p;
                    this.f13357n = i4 / 128;
                    this.f13356m = (i4 / 128) * 128;
                    Log.d("SOUL", "size = " + this.f13359p + " mBlockConut=" + this.f13357n);
                    byte[] bArr = new byte[this.f13356m];
                    this.f13354k = bArr;
                    fileInputStream2.read(bArr);
                    int i5 = this.f13357n;
                    S2(0, 234, 2, (i5 >> 8) & 255, i5 & 255);
                    this.f13349f = 0;
                    d.j(1, 100);
                    d.j(0, 100 / this.f13357n);
                    try {
                        fileInputStream2.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    a.f.p().s("requestUpdate");
                    b.f13172e = 0;
                    this.f13349f = 0;
                    d.b(this.f13362s);
                    a.i.a0(100L);
                    this.f13350g = 0;
                } catch (Exception e5) {
                    e = e5;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    Log.d("CAN", e.getMessage());
                    a.f.p().s("读取文件失败");
                    d.j(2, 4);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e6) {
                            e6.printStackTrace();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e8) {
                e = e8;
            }
        } catch (Throwable th2) {
            th = th2;
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
        if (this.f13346c + bArr.length > 1024) {
            this.f13346c = 0;
            this.f13347d = 0;
            this.f13348e = 0;
        }
        System.arraycopy(bArr, 0, this.f13345b, this.f13346c, bArr.length);
        int length = this.f13346c + bArr.length;
        this.f13346c = length;
        int i5 = this.f13348e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13345b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13348e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13345b[i6]);
                i6++;
            }
            byte b3 = (byte) (~b2);
            byte[] bArr2 = this.f13345b;
            if (b3 == bArr2[i4]) {
                Q2(bArr2, 1, i4 - 1);
                this.f13347d = this.f13348e + 1;
            } else {
                this.f13347d = 1;
            }
            this.f13348e = 0;
        }
        int i7 = this.f13346c - 2;
        while (true) {
            i2 = this.f13347d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13345b;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 3] & 255;
                this.f13348e = i8;
                if (i8 > 512) {
                    this.f13348e = 0;
                } else {
                    int i9 = i8 + i2 + 4;
                    this.f13348e = i9;
                    if (i9 >= this.f13346c) {
                        this.f13348e = i9 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f13348e;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13345b[i10]);
                        i10++;
                    }
                    byte b5 = (byte) (~b4);
                    byte[] bArr4 = this.f13345b;
                    if (b5 == bArr4[i3]) {
                        int i11 = this.f13347d;
                        Q2(bArr4, i11 + 1, (i3 - i11) - 1);
                        this.f13347d = this.f13348e;
                    } else {
                        this.f13347d++;
                    }
                    this.f13348e = 0;
                }
            }
            this.f13347d++;
        }
        if (i2 != 0) {
            int i12 = this.f13346c - i2;
            this.f13346c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f13345b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13347d = 0;
        }
    }
}
