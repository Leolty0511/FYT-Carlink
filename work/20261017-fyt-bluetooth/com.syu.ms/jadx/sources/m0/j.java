package m0;

import android.util.Log;
import java.io.FileInputStream;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class j extends m0.a implements o1.q {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte[] f13258k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13259l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13248a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13249b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13250c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13251d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13252e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f13253f = {0};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13254g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13255h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13256i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f13257j = new byte[64];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f13260m = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (j.this.f13254g != 0) {
                d.i(this);
                return;
            }
            j.Q2(j.this);
            if (j.this.f13256i == 4) {
                j.this.f13256i = 0;
                j.this.U2();
            } else {
                l0.z.f13137a.f(46, 225, 4, j.this.f13258k[j.this.f13259l - 4], j.this.f13258k[j.this.f13259l - 3], j.this.f13258k[j.this.f13259l - 2], j.this.f13258k[j.this.f13259l - 1]);
                try {
                    Thread.sleep(20L);
                } catch (Exception unused) {
                }
            }
        }
    }

    public static /* synthetic */ int Q2(j jVar) {
        int i2 = jVar.f13256i;
        jVar.f13256i = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13254g == 0) {
            d.i(this.f13260m);
        }
        this.f13254g = -1;
        this.f13258k = null;
        b.f13172e = 0;
    }

    public final void U2() {
        d.f();
    }

    public void V2(byte[] bArr, int i2, int i3) {
        Log.d("CAN", "SOUL :" + o1.b0.d(bArr, i2, i3));
        byte b2 = bArr[i2];
        if (b2 == -30) {
            W2(bArr[i2 + 2]);
            return;
        }
        if (b2 != -28) {
            return;
        }
        byte[] bArr2 = new byte[133];
        int i4 = i2 + 2;
        int i5 = i2 + 3;
        int i6 = (((bArr[i4] & 255) << 8) | (bArr[i5] & 255)) * 128;
        int i7 = ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
        d.j(1, 100);
        int i8 = this.f13259l;
        int i9 = i8 / 128;
        int i10 = i8 % 128;
        if (i10 != 0) {
            i9++;
        }
        if (i8 != 0) {
            d.j(0, (i7 * 100) / i9);
        }
        byte[] bArr3 = this.f13258k;
        if (bArr3 != null) {
            if (i7 < this.f13259l / 128) {
                System.arraycopy(bArr3, i6, bArr2, 5, 128);
                bArr2[0] = -29;
                bArr2[1] = -29;
                bArr2[2] = -126;
                bArr2[3] = (byte) (i7 >> 8);
                bArr2[4] = (byte) (i7 & 255);
                l0.z.f13137a.f(s0.e(bArr2));
                return;
            }
            byte[] bArr4 = new byte[133];
            for (int i11 = 0; i11 < 133; i11++) {
                bArr4[i11] = -1;
            }
            Log.d("CAN", "SOUL : blockstart=" + i6 + " mLastleftData =" + i10 + " mBufferSize=" + this.f13259l);
            System.arraycopy(this.f13258k, i6, bArr4, 5, i10);
            bArr4[0] = -29;
            bArr4[1] = -29;
            bArr4[2] = -126;
            bArr4[3] = (byte) (i7 >> 8);
            bArr4[4] = (byte) (i7 & 255);
            l0.z.f13137a.f(s0.e(bArr4));
        }
    }

    public final void W2(byte b2) {
        if (b2 == 0) {
            d.j(2, 4);
            return;
        }
        if (b2 != 1) {
            if (b2 == 2) {
                this.f13254g = 1;
                d.j(2, 1);
                return;
            } else {
                if (b2 != 3) {
                    return;
                }
                d.j(0, 100);
                d.j(2, 3);
                return;
            }
        }
        int i2 = this.f13259l;
        int i3 = i2 / 128;
        if (i2 % 128 != 0) {
            i3++;
        }
        Log.d("CAN", "block =" + i3);
        l0.z.f13137a.f(s0.e(-27, -27, 2, (byte) (i3 >> 8), (byte) (i3 & 255)));
        this.f13254g = 1;
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00bc A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        FileInputStream fileInputStream;
        Throwable th;
        Exception e2;
        if (i2 != 0 || strArr == null || strArr.length <= 0) {
            return;
        }
        try {
            fileInputStream = new FileInputStream(strArr[0]);
            try {
                try {
                    int iAvailable = fileInputStream.available();
                    this.f13259l = iAvailable;
                    byte[] bArr = new byte[iAvailable];
                    this.f13258k = bArr;
                    fileInputStream.read(bArr);
                    Log.d("CAN", "mBuffer[0]=" + ((int) this.f13258k[0]) + "mBuffer[1]=" + ((int) this.f13258k[1]) + "mBuffer[2]=" + ((int) this.f13258k[2]));
                    l0.a aVar = l0.z.f13137a;
                    byte[] bArr2 = this.f13258k;
                    aVar.f(46, 225, 4, bArr2[iAvailable + (-4)], bArr2[iAvailable + (-3)], bArr2[iAvailable + (-2)], bArr2[iAvailable - 1]);
                    try {
                        fileInputStream.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    b.f13172e = 1;
                    U2();
                    this.f13255h = 0;
                    this.f13254g = 0;
                    this.f13256i = 0;
                    d.b(this.f13260m);
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
                if (fileInputStream != null) {
                    try {
                        fileInputStream.close();
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
            fileInputStream = null;
            th = th3;
            if (fileInputStream != null) {
                fileInputStream.close();
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
        if (this.f13250c + bArr.length > 1024) {
            this.f13250c = 0;
            this.f13251d = 0;
            this.f13252e = 0;
        }
        System.arraycopy(bArr, 0, this.f13249b, this.f13250c, bArr.length);
        int length = this.f13250c + bArr.length;
        this.f13250c = length;
        int i5 = this.f13252e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13249b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13252e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13249b[i6]);
                i6++;
            }
            byte b3 = (byte) (~b2);
            byte[] bArr2 = this.f13249b;
            if (b3 == bArr2[i4]) {
                V2(bArr2, 1, i4 - 1);
                this.f13251d = this.f13252e + 1;
            } else {
                this.f13251d = 1;
            }
            this.f13252e = 0;
        }
        int i7 = this.f13250c - 2;
        while (true) {
            i2 = this.f13251d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13249b;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f13252e = i8;
                if (i8 > 512) {
                    this.f13252e = 0;
                } else {
                    int i9 = i8 + i2 + 3;
                    this.f13252e = i9;
                    if (i9 >= this.f13250c) {
                        this.f13252e = i9 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f13252e;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13249b[i10]);
                        i10++;
                    }
                    byte b5 = (byte) (~b4);
                    byte[] bArr4 = this.f13249b;
                    if (b5 == bArr4[i3]) {
                        int i11 = this.f13251d;
                        V2(bArr4, i11 + 1, (i3 - i11) - 1);
                        this.f13251d = this.f13252e;
                    } else {
                        this.f13251d++;
                    }
                    this.f13252e = 0;
                }
            }
            this.f13251d++;
        }
        if (i2 != 0) {
            int i12 = this.f13250c - i2;
            this.f13250c = i12;
            if (i12 > 0) {
                byte[] bArr5 = this.f13249b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13251d = 0;
        }
    }
}
