package m0;

import android.util.Log;
import java.io.FileInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class y extends m0.a implements o1.q {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f13492j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13493k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13483a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13484b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13485c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13486d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13487e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13488f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13489g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13490h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f13491i = new byte[132];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public Runnable f13494l = new a();

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f13495a = {-31, 4, 0, 0, 0, 0};

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            System.arraycopy(y.this.f13492j, y.this.f13493k - 4, this.f13495a, 2, 4);
            if (y.this.f13488f != 0) {
                d.i(this);
                return;
            }
            y.S2(y.this);
            if (y.this.f13489g == 4) {
                y.this.f13489g = 0;
                y.this.W2();
            } else {
                y.this.Y2(this.f13495a);
                a.f.p().s("请求进入CAN盒自身的升级模式");
            }
        }
    }

    public static /* synthetic */ int S2(y yVar) {
        int i2 = yVar.f13489g;
        yVar.f13489g = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13488f == 0) {
            d.i(this.f13494l);
        }
        this.f13488f = -1;
        this.f13492j = null;
        b.f13172e = 0;
    }

    public final void V2() {
        d.m(new byte[]{-1});
    }

    public final void W2() {
        d.f();
    }

    public void X2(byte[] bArr, int i2, int i3) {
        Log.d("CAN", o1.b0.d(bArr, i2, i3));
        byte b2 = bArr[i2];
        if (b2 != -30) {
            if (b2 != -28) {
                return;
            }
            V2();
            int i4 = (bArr[i2 + 3] & 255) | ((bArr[i2 + 2] << 8) & 65280);
            this.f13488f = i4;
            Z2(i4);
            return;
        }
        byte b3 = bArr[i2 + 2];
        if (b3 == 0) {
            V2();
            d.j(2, 8);
            return;
        }
        if (b3 == 1) {
            V2();
            this.f13488f = 1;
            d.j(2, 1);
            int i5 = this.f13490h;
            if (i5 != 0) {
                Y2(new byte[]{-27, 2, (byte) ((i5 >> 8) & 255), (byte) (i5 & 255)});
                return;
            }
            return;
        }
        if (b3 == 2) {
            V2();
            d.j(2, 1);
        } else {
            if (b3 != 3) {
                return;
            }
            V2();
            d.j(2, 3);
        }
    }

    public final void Y2(byte[] bArr) {
        int length = bArr.length;
        if (length <= 0) {
            return;
        }
        int length2 = bArr.length + 2;
        byte[] bArr2 = new byte[length2];
        bArr2[0] = 46;
        System.arraycopy(bArr, 0, bArr2, 1, length);
        byte b2 = 0;
        for (byte b3 : bArr) {
            b2 = (byte) (b2 + b3);
        }
        bArr2[bArr.length + 1] = (byte) (b2 ^ 255);
        d.m(bArr2);
        Log.d("SEND", o1.b0.d(bArr2, 0, length2));
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00ca A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
                    if (iAvailable != 0 && iAvailable % 128 == 4) {
                        Log.d("CAN", "size = " + iAvailable);
                        a.f.p().s("size = " + iAvailable);
                        this.f13493k = iAvailable;
                        byte[] bArr = new byte[iAvailable];
                        this.f13492j = bArr;
                        fileInputStream.read(bArr);
                        this.f13490h = iAvailable / 128;
                        try {
                            fileInputStream.close();
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                        Log.d("CAN", "requestUpdate");
                        a.f.p().s("requestUpdate");
                        b.f13172e = 1;
                        W2();
                        this.f13489g = 0;
                        this.f13488f = 0;
                        d.b(this.f13494l);
                        return;
                    }
                    Log.d("CAN", "size == 0 or not N*128+4");
                    a.f.p().s("size == 0 or not N*128+4");
                    d.j(2, 5);
                    try {
                        fileInputStream.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                } catch (Exception e5) {
                    e2 = e5;
                    e2.printStackTrace();
                    Log.d("CAN", e2.getMessage());
                    a.f.p().s("读取文件失败");
                    d.j(2, 4);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e6) {
                            e6.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (Exception e7) {
                        e7.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e8) {
            fileInputStream = null;
            e2 = e8;
        } catch (Throwable th3) {
            th = th3;
            if (0 != 0) {
                inputStream.close();
            }
            throw th;
        }
    }

    public final void Z2(int i2) {
        int i3 = this.f13490h;
        if (i3 <= 0 || i2 < 0 || i2 >= i3) {
            d.j(2, 4);
            return;
        }
        Log.d("CAN", "index = " + i2 + " ;mUpgradeTotalStep = " + this.f13490h);
        int i4 = i2 + 1;
        if (i4 * 128 <= this.f13493k) {
            byte[] bArr = this.f13491i;
            bArr[0] = -29;
            bArr[1] = -126;
            if (i2 == this.f13490h - 1) {
                bArr[2] = 31;
                bArr[3] = 31;
            } else {
                bArr[2] = (byte) ((i2 >> 8) & 255);
                bArr[3] = (byte) (i2 & 255);
            }
            System.arraycopy(this.f13492j, i2 * 128, bArr, 4, 128);
            Y2(this.f13491i);
            Log.d("CAN", "升级中  " + i4 + "/" + (this.f13493k / 128));
            a.f.p().s("升级中  " + i4 + "/" + (this.f13493k / 128));
            d.j(2, 2);
            d.j(1, 100);
            d.j(0, (i4 * 100) / (this.f13493k / 128));
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
        if (this.f13485c + bArr.length > 1024) {
            this.f13485c = 0;
            this.f13486d = 0;
            this.f13487e = 0;
        }
        Log.d("ABC", o1.b0.d(bArr, 0, bArr.length));
        System.arraycopy(bArr, 0, this.f13484b, this.f13485c, bArr.length);
        int length = this.f13485c + bArr.length;
        this.f13485c = length;
        int i5 = this.f13487e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13484b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13487e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13484b[i6]);
                i6++;
            }
            byte b3 = (byte) (~b2);
            byte[] bArr2 = this.f13484b;
            if (b3 == bArr2[i4]) {
                X2(bArr2, 1, i4 - 1);
                this.f13486d = this.f13487e + 1;
            } else {
                this.f13486d = 1;
            }
            this.f13487e = 0;
        }
        int i7 = this.f13485c - 2;
        while (true) {
            i2 = this.f13486d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13484b;
            if (bArr3[i2] == 46) {
                int i8 = (bArr3[i2 + 2] & 255) + 3;
                this.f13487e = i8;
                int i9 = i8 + i2;
                this.f13487e = i9;
                if (i9 >= this.f13485c) {
                    this.f13487e = i9 - i2;
                    break;
                }
                byte b4 = bArr3[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f13487e;
                    if (i10 >= i3) {
                        break;
                    }
                    b4 = (byte) (b4 + this.f13484b[i10]);
                    i10++;
                }
                byte b5 = (byte) (~b4);
                byte[] bArr4 = this.f13484b;
                if (b5 == bArr4[i3]) {
                    int i11 = this.f13486d;
                    X2(bArr4, i11 + 1, (i3 - i11) - 1);
                    this.f13486d = this.f13487e;
                } else {
                    this.f13486d++;
                }
                this.f13487e = 0;
            }
            this.f13486d++;
        }
        if (i2 != 0) {
            int i12 = this.f13485c - i2;
            this.f13485c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f13484b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13486d = 0;
        }
    }
}
