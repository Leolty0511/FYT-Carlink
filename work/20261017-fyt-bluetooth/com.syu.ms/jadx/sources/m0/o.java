package m0;

import android.util.Log;
import java.io.FileInputStream;
import o1.e0;

/* JADX INFO: loaded from: classes2.dex */
public class o extends m0.a implements o1.q {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte[] f13334k;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13336m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13324a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13325b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13326c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13327d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13328e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13329f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13330g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13331h = 128;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f13332i = new byte[128 + 2];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f13333j = new byte[64];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte[] f13335l = new byte[10];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13337n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte[] f13338o = {0};

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f13339p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f13340q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f13341r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public Runnable f13342s = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.d("SOUL", "mUpgradeStep =" + o.this.f13329f);
            if (o.this.f13329f != 0) {
                d.i(this);
            } else {
                o oVar = o.this;
                oVar.S2(234, 2, (oVar.f13337n >> 8) & 255, o.this.f13337n & 255);
            }
        }
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        this.f13329f = -1;
        this.f13334k = null;
        b.f13172e = 0;
    }

    public final void P2() {
        e0 e0Var = z.a.f18151b;
        e0Var.i(z.k.b(1, 86, 170));
        e0Var.i(z.k.b(1, 86, 85));
    }

    public void Q2(byte[] bArr, int i2, int i3) {
        Log.d("SOUL", "SOUL :" + o1.b0.d(bArr, i2, i3));
        byte b2 = bArr[i2];
        if (b2 == -21) {
            this.f13329f = 1;
            R2(bArr, i2, i3 - 1);
        } else {
            if (b2 != -19) {
                return;
            }
            R2(bArr, i2, i3 - 1);
        }
    }

    public final void R2(byte[] bArr, int i2, int i3) {
        Log.d("SOUL", "data[start] =" + (bArr[i2] & 255) + "updateCanUpInfo :" + o1.b0.d(bArr, i2, i3));
        Log.d("SOUL", "block =" + this.f13341r + "mUpgradeStep :" + this.f13329f);
        byte b2 = bArr[i2];
        if (b2 != -21) {
            if (b2 != -19) {
                return;
            }
            int i4 = ((bArr[i2 + 3] & 255) | (((bArr[i2 + 2] & 255) << 8) & 65280)) + 1;
            this.f13341r = i4;
            byte[] bArr2 = this.f13332i;
            bArr2[0] = (byte) ((i4 >> 8) & 255);
            bArr2[1] = (byte) (i4 & 255);
            System.arraycopy(this.f13334k, i4 * 128, bArr2, 2, 128);
            int i5 = this.f13341r;
            int i6 = (i5 + 1) & 65535;
            int i7 = this.f13337n;
            if (i6 == (65535 & i7)) {
                d.j(2, 3);
                int i8 = this.f13337n;
                d.j(0, (i8 * 100) / i8);
            } else {
                d.j(0, (i5 * 100) / i7);
            }
            T2(236, 130, this.f13332i);
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
                int i10 = this.f13337n;
                d.j(0, (i10 * 100) / i10);
                return;
            }
            return;
        }
        d.j(2, 1);
        byte[] bArr3 = this.f13332i;
        bArr3[0] = 0;
        bArr3[1] = 0;
        System.arraycopy(this.f13334k, this.f13341r * 128, bArr3, 2, 128);
        d.j(0, (this.f13341r * 100) / this.f13337n);
        T2(236, 130, this.f13332i);
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
        for (int i4 : iArr) {
            iArr2[i2] = iArr2[i2] + i4;
        }
        iArr2[i2] = iArr2[i2] ^ 255;
        l0.a aVar = l0.z.f13137a;
        l0.a.d(iArr2);
    }

    public final void T2(int i2, int i3, byte[] bArr) {
        int length = bArr.length + 5;
        int[] iArr = new int[length];
        iArr[0] = -23;
        iArr[1] = 46;
        int i4 = 2;
        iArr[2] = (byte) i2;
        iArr[3] = -126;
        int length2 = bArr.length;
        for (int i5 = 0; i5 < length2; i5++) {
            iArr[4 + i5] = bArr[i5];
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
        this.f13341r = 0;
        P2();
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(strArr[0]);
                try {
                    this.f13339p = fileInputStream2.available();
                    Log.d("SOUL", "size = " + this.f13339p);
                    int i3 = this.f13339p;
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
                    a.f.p().s("size = " + this.f13339p);
                    int i4 = this.f13339p;
                    this.f13337n = i4 / 128;
                    this.f13336m = (i4 / 128) * 128;
                    Log.d("SOUL", "size = " + this.f13339p + " mBlockConut=" + this.f13337n);
                    byte[] bArr = new byte[this.f13336m];
                    this.f13334k = bArr;
                    fileInputStream2.read(bArr);
                    Log.d("CAN", "checksum =" + this.f13340q);
                    int i5 = this.f13337n;
                    S2(234, 2, (i5 >> 8) & 255, i5 & 255);
                    Log.d("CAN", "mUpgradeStep = " + this.f13329f);
                    this.f13329f = 0;
                    Log.d("CAN", "AAmUpgradeStep = " + this.f13329f);
                    d.j(1, 100);
                    d.j(0, 100 / this.f13337n);
                    try {
                        fileInputStream2.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    a.f.p().s("requestUpdate");
                    b.f13172e = 0;
                    this.f13329f = 0;
                    d.b(this.f13342s);
                    a.i.a0(100L);
                    this.f13330g = 0;
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
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e8) {
            e = e8;
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
        if (this.f13326c + bArr.length > 1024) {
            this.f13326c = 0;
            this.f13327d = 0;
            this.f13328e = 0;
        }
        System.arraycopy(bArr, 0, this.f13325b, this.f13326c, bArr.length);
        int length = this.f13326c + bArr.length;
        this.f13326c = length;
        int i5 = this.f13328e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13325b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13328e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13325b[i6]);
                i6++;
            }
            byte b3 = (byte) (~b2);
            byte[] bArr2 = this.f13325b;
            if (b3 == bArr2[i4]) {
                Q2(bArr2, 1, i4 - 1);
                this.f13327d = this.f13328e + 1;
            } else {
                this.f13327d = 1;
            }
            this.f13328e = 0;
        }
        int i7 = this.f13326c - 2;
        while (true) {
            i2 = this.f13327d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13325b;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f13328e = i8;
                if (i8 > 512) {
                    this.f13328e = 0;
                } else {
                    int i9 = i8 + i2 + 3;
                    this.f13328e = i9;
                    if (i9 >= this.f13326c) {
                        this.f13328e = i9 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f13328e;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13325b[i10]);
                        i10++;
                    }
                    byte b5 = (byte) (~b4);
                    byte[] bArr4 = this.f13325b;
                    if (b5 == bArr4[i3]) {
                        int i11 = this.f13327d;
                        Q2(bArr4, i11 + 1, (i3 - i11) - 1);
                        this.f13327d = this.f13328e;
                    } else {
                        this.f13327d++;
                    }
                    this.f13328e = 0;
                }
            }
            this.f13327d++;
        }
        if (i2 != 0) {
            int i12 = this.f13326c - i2;
            this.f13326c = i12;
            if (i12 > 0) {
                byte[] bArr5 = this.f13325b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13327d = 0;
        }
    }
}
