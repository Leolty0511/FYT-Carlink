package m0;

import android.util.Log;
import java.io.FileInputStream;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class b0 extends m0.a implements o1.q {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f13182i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13174a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13175b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13176c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13177d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13178e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13179f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13180g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13181h = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Runnable f13183j = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().s(" mRequestUpgradeMode  mUpgradeStep == " + b0.this.f13180g);
            if (b0.this.f13180g != 0) {
                d.i(this);
                return;
            }
            b0.Q2(b0.this);
            if (b0.this.f13181h == 4) {
                b0.this.f13181h = 0;
                b0.this.S2();
                return;
            }
            l0.a aVar = l0.z.f13137a;
            int i2 = b0.this.f13179f;
            aVar.f(227, i.a.Theme_actionModeShareDrawable, 9, 0, (i2 >> 24) & 255, (i2 >> 16) & 255, (i2 >> 8) & 255, i2 & 255, 0, 0, 0, 0);
            try {
                Thread.sleep(20L);
            } catch (Exception unused) {
                Log.d("CAN", "sleep exception");
            }
            a.f.p().s("请求进入CAN盒自身的升级模式");
        }
    }

    public static /* synthetic */ int Q2(b0 b0Var) {
        int i2 = b0Var.f13181h;
        b0Var.f13181h = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13180g == 0) {
            d.i(this.f13183j);
        }
        this.f13180g = -1;
        this.f13182i = null;
        b.f13172e = 0;
    }

    public final void S2() {
        d.f();
    }

    public void T2(byte[] bArr, int i2, int i3) {
        Log.d("CAN", "SOUL :" + o1.b0.d(bArr, i2, i3));
        byte b2 = bArr[i2];
        if (b2 == -14) {
            byte b3 = bArr[i2 + 2];
            if (b3 != -1 && b3 != 1) {
                if (b3 != 2) {
                    return;
                }
                d.j(0, 100);
                d.j(2, 3);
                return;
            }
            this.f13180g = 1;
            d.j(2, 1);
            d.j(1, 100);
            this.f13180g = 1;
            d.j(2, 1);
            d.j(1, 100);
            byte[] bArr2 = new byte[133];
            byte[] bArr3 = this.f13182i;
            if (bArr3 != null) {
                System.arraycopy(bArr3, 0, bArr2, 5, 128);
                bArr2[0] = -29;
                bArr2[1] = -13;
                bArr2[2] = -126;
                bArr2[3] = 0;
                bArr2[4] = 0;
                l0.z.f13137a.f(s0.e(bArr2));
                return;
            }
            return;
        }
        if (b2 != -12) {
            return;
        }
        byte[] bArr4 = new byte[133];
        StringBuilder sb = new StringBuilder();
        sb.append("data[start+2] =");
        int i4 = i2 + 2;
        sb.append(bArr[i4] & 255);
        sb.append("data[start+3] =");
        int i5 = i2 + 3;
        sb.append(bArr[i5] & 255);
        sb.append(" size =");
        sb.append(this.f13179f);
        Log.d("CAN", sb.toString());
        int i6 = (((bArr[i4] & 255) << 8) | ((bArr[i5] & 255) + 1)) * 128;
        int i7 = ((bArr[i4] & 255) << 8) | ((bArr[i5] & 255) + 1);
        d.j(0, (i6 * 100) / this.f13179f);
        byte[] bArr5 = this.f13182i;
        if (bArr5 != null) {
            System.arraycopy(bArr5, i6, bArr4, 5, 128);
            bArr4[0] = -29;
            bArr4[1] = -13;
            bArr4[2] = -126;
            bArr4[3] = (byte) (i7 >> 8);
            bArr4[4] = (byte) (i7 & 255);
            l0.z.f13137a.f(s0.e(bArr4));
        }
    }

    /* JADX WARN: Code duplicated, block: B:45:0x0111 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        FileInputStream fileInputStream;
        Throwable th;
        Exception e2;
        Log.d("CAN", "cmdCode =" + i2);
        if (i2 != 0 || strArr == null || strArr.length <= 0) {
            return;
        }
        try {
            fileInputStream = new FileInputStream(strArr[0]);
            try {
                try {
                    this.f13179f = fileInputStream.available();
                    Log.d("CAN", "size = " + this.f13179f);
                    a.f.p().s("size = " + this.f13179f);
                    int i3 = this.f13179f;
                    if (i3 % 128 == 0) {
                        this.f13182i = new byte[i3];
                    } else {
                        this.f13182i = new byte[((i3 / 128) + 1) * 128];
                    }
                    int iAvailable = fileInputStream.available();
                    this.f13179f = iAvailable;
                    l0.z.f13137a.f(227, i.a.Theme_actionModeShareDrawable, 9, 0, (iAvailable >> 24) & 255, (iAvailable >> 16) & 255, (iAvailable >> 8) & 255, iAvailable & 255, 0, 0, 0, 0);
                    fileInputStream.read(this.f13182i);
                    try {
                        fileInputStream.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    Log.d("CAN", "requestUpdate");
                    a.f.p().s("requestUpdate");
                    b.f13172e = 1;
                    S2();
                    this.f13180g = 0;
                    this.f13181h = 0;
                    d.b(this.f13183j);
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
        if (this.f13176c + bArr.length > 1024) {
            this.f13176c = 0;
            this.f13177d = 0;
            this.f13178e = 0;
        }
        System.arraycopy(bArr, 0, this.f13175b, this.f13176c, bArr.length);
        int length = this.f13176c + bArr.length;
        this.f13176c = length;
        int i5 = this.f13178e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13175b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13178e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13175b[i6]);
                i6++;
            }
            byte b3 = (byte) (~b2);
            byte[] bArr2 = this.f13175b;
            if (b3 == bArr2[i4]) {
                T2(bArr2, 1, i4 - 1);
                this.f13177d = this.f13178e + 1;
            } else {
                this.f13177d = 1;
            }
            this.f13178e = 0;
        }
        int i7 = this.f13176c - 2;
        while (true) {
            i2 = this.f13177d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13175b;
            if (bArr3[i2] == 45) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f13178e = i8;
                if (i8 > 512) {
                    this.f13178e = 0;
                } else {
                    int i9 = i8 + i2 + 3;
                    this.f13178e = i9;
                    if (i9 >= this.f13176c) {
                        this.f13178e = i9 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f13178e;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13175b[i10]);
                        i10++;
                    }
                    byte b5 = (byte) (~b4);
                    byte[] bArr4 = this.f13175b;
                    if (b5 == bArr4[i3]) {
                        int i11 = this.f13177d;
                        T2(bArr4, i11 + 1, (i3 - i11) - 1);
                        this.f13177d = this.f13178e;
                    } else {
                        this.f13177d++;
                    }
                    this.f13178e = 0;
                }
            }
            this.f13177d++;
        }
        if (i2 != 0) {
            int i12 = this.f13176c - i2;
            this.f13176c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f13175b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13177d = 0;
        }
    }
}
