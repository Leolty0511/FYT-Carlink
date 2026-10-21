package m0;

import android.util.Log;
import java.io.FileInputStream;
import java.io.InputStream;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class a0 extends m0.a implements o1.q {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte[] f13164k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13165l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13154a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13155b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13156c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13157d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13158e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13159f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13160g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13161h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13162i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f13163j = new byte[64];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f13166m = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().s(" mRequestUpgradeMode  mUpgradeStep == " + a0.this.f13160g);
            if (a0.this.f13160g != 0) {
                d.i(this);
                return;
            }
            a0.Q2(a0.this);
            if (a0.this.f13162i == 4) {
                a0.this.f13162i = 0;
                a0.this.T2();
                return;
            }
            l0.a aVar = l0.z.f13137a;
            byte[] bArr = a0.this.f13164k;
            a0 a0Var = a0.this;
            byte[] bArr2 = a0Var.f13164k;
            a0 a0Var2 = a0.this;
            byte[] bArr3 = a0Var2.f13164k;
            a0 a0Var3 = a0.this;
            byte[] bArr4 = a0Var3.f13164k;
            a0 a0Var4 = a0.this;
            aVar.f(227, 225, 5, bArr[a0Var.f13159f - 5], bArr2[a0Var2.f13159f - 4], bArr3[a0Var3.f13159f - 3], bArr4[a0Var4.f13159f - 2], a0Var4.f13164k[a0.this.f13159f - 1]);
            try {
                Thread.sleep(20L);
            } catch (Exception unused) {
                Log.d("CAN", "sleep exception");
            }
            a.f.p().s("请求进入CAN盒自身的升级模式");
        }
    }

    public static /* synthetic */ int Q2(a0 a0Var) {
        int i2 = a0Var.f13162i;
        a0Var.f13162i = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13160g == 0) {
            d.i(this.f13166m);
        }
        this.f13160g = -1;
        this.f13164k = null;
        b.f13172e = 0;
    }

    public final void T2() {
        d.f();
    }

    public void U2(byte[] bArr, int i2, int i3) {
        byte b2 = bArr[i2];
        if (b2 == -30) {
            V2(bArr[i2 + 2]);
            return;
        }
        if (b2 != -28) {
            return;
        }
        byte[] bArr2 = new byte[133];
        int i4 = i2 + 2;
        int i5 = i2 + 3;
        int i6 = (((bArr[i4] & 255) << 8) | (bArr[i5] & 255)) * 128;
        int i7 = (bArr[i5] & 255) | ((bArr[i4] & 255) << 8);
        d.j(1, 100);
        d.j(0, (i7 * 100) / ((this.f13159f - 5) / 128));
        byte[] bArr3 = this.f13164k;
        if (bArr3 != null) {
            if (this.f13159f >= i6 + 128) {
                System.arraycopy(bArr3, i6, bArr2, 5, 128);
            }
            bArr2[0] = -29;
            bArr2[1] = -29;
            bArr2[2] = -126;
            if ((this.f13159f - 5) / 128 <= i7 + 1) {
                bArr2[3] = 31;
                bArr2[4] = 31;
            } else {
                bArr2[3] = (byte) (i7 >> 8);
                bArr2[4] = (byte) (i7 & 255);
            }
            l0.z.f13137a.f(s0.e(bArr2));
        }
    }

    public final void V2(byte b2) {
        if (b2 == 0) {
            d.j(2, 4);
            return;
        }
        if (b2 == 1) {
            int i2 = (this.f13159f - 5) / 128;
            Log.d("LG", "block =" + i2);
            l0.z.f13137a.f(s0.e(-29, -27, 2, (byte) (i2 >> 8), (byte) (i2 & 255)));
            return;
        }
        if (b2 == 2) {
            this.f13160g = 1;
            d.j(2, 1);
        } else {
            if (b2 != 3) {
                return;
            }
            d.j(0, 100);
            d.j(2, 3);
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
                    this.f13159f = fileInputStream.available();
                    Log.d("CAN", "LGsize = " + this.f13159f);
                    a.f.p().s("size = " + this.f13159f);
                    int i3 = this.f13159f;
                    this.f13165l = i3;
                    byte[] bArr = new byte[i3];
                    this.f13164k = bArr;
                    l0.z.f13137a.f(227, 225, 5, bArr[i3 - 5], bArr[i3 - 4], bArr[i3 - 3], bArr[i3 - 2], bArr[i3 - 1]);
                    fileInputStream.read(this.f13164k);
                    try {
                        fileInputStream.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    Log.d("CAN", "requestUpdateLG");
                    a.f.p().s("requestUpdate");
                    b.f13172e = 1;
                    T2();
                    this.f13161h = 0;
                    this.f13160g = 0;
                    this.f13162i = 0;
                    d.b(this.f13166m);
                } catch (Exception e4) {
                    e2 = e4;
                    e2.printStackTrace();
                    Log.d("CAN", e2.getMessage());
                    a.f.p().s("读取文件失败");
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
        if (this.f13156c + bArr.length > 1024) {
            this.f13156c = 0;
            this.f13157d = 0;
            this.f13158e = 0;
        }
        System.arraycopy(bArr, 0, this.f13155b, this.f13156c, bArr.length);
        int length = this.f13156c + bArr.length;
        this.f13156c = length;
        int i5 = this.f13158e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13155b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13158e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13155b[i6]);
                i6++;
            }
            byte b3 = (byte) (~b2);
            byte[] bArr2 = this.f13155b;
            if (b3 == bArr2[i4]) {
                U2(bArr2, 1, i4 - 1);
                this.f13157d = this.f13158e + 1;
            } else {
                this.f13157d = 1;
            }
            this.f13158e = 0;
        }
        int i7 = this.f13156c - 2;
        while (true) {
            i2 = this.f13157d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13155b;
            if (bArr3[i2] == 46) {
                int i8 = (bArr3[i2 + 2] & 255) + 3;
                this.f13158e = i8;
                int i9 = i8 + i2;
                this.f13158e = i9;
                if (i9 >= this.f13156c) {
                    this.f13158e = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f13158e;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f13155b[i10]);
                    i10++;
                }
                byte b5 = (byte) (~b4);
                byte[] bArr4 = this.f13155b;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f13157d;
                    U2(bArr4, i11 + 1, (i3 - i11) - 1);
                    this.f13157d = this.f13158e;
                } else {
                    this.f13157d++;
                }
                this.f13158e = 0;
            }
            this.f13157d++;
        }
        if (i2 != 0) {
            int i12 = this.f13156c - i2;
            this.f13156c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f13155b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13157d = 0;
        }
    }
}
