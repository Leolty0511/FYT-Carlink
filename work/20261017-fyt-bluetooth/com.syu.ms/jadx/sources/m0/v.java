package m0;

import android.util.Log;
import java.io.FileInputStream;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class v extends m0.a implements o1.q {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f13433r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte[] f13448o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f13449p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13434a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13435b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13436c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13437d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13438e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13439f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13440g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13441h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13442i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f13443j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13444k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13445l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13446m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte[] f13447n = new byte[64];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f13450q = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().s(" mRequestUpgradeMode  mUpgradeStep == " + v.this.f13444k);
            if (v.this.f13444k != 1) {
                d.i(this);
                return;
            }
            v.R2(v.this);
            if (v.this.f13446m == 4) {
                v.this.f13446m = 0;
                v.this.U2();
                return;
            }
            v vVar = v.this;
            if (vVar.f13442i < 20) {
                vVar.a3(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127);
                a.i.a0(100L);
            }
            try {
                Thread.sleep(20L);
            } catch (Exception unused) {
                Log.d("CAN", "sleep exception");
            }
            a.f.p().s("请求进入CAN盒自身的升级模式");
        }
    }

    public static /* synthetic */ int R2(v vVar) {
        int i2 = vVar.f13446m;
        vVar.f13446m = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13444k == 0) {
            d.i(this.f13450q);
        }
        this.f13444k = -1;
        this.f13448o = null;
        b.f13172e = 0;
    }

    public void N2() {
        int i2 = this.f13441h;
        if (i2 > 1) {
            return;
        }
        int i3 = f13433r;
        if (i3 == 0) {
            f13433r = 1;
        } else if (i3 == 1) {
            f13433r = 2;
        } else if (i3 == 2) {
            f13433r = 3;
        } else if (i3 == 3) {
            f13433r = 1;
        }
        if (i2 == 1) {
            W2(0);
            this.f13441h = 2;
            return;
        }
        if (this.f13440g >= this.f13443j) {
            X2();
            return;
        }
        if (f13433r == 1) {
            Z2();
        }
        if (f13433r == 2) {
            W2(this.f13440g);
        }
        if (f13433r == 3) {
            Y2(this.f13440g);
            this.f13440g++;
        }
    }

    public void T2(byte b2) {
        if (b.f13172e == 0) {
            return;
        }
        if (b2 == 31 || b2 == 121) {
            Log.d("CAN", "data =" + ((int) b2) + " send_ok =" + this.f13441h + " sendcheck=" + f13433r + " receiver_1f=" + this.f13442i);
        }
        if (b2 != 31) {
            if (b2 == 121 && this.f13442i > 20) {
                this.f13444k = 2;
                N2();
                return;
            }
            return;
        }
        if (this.f13441h > 1) {
            return;
        }
        int i2 = f13433r;
        if (i2 == 0 || i2 == 1) {
            this.f13442i++;
        }
        int i3 = this.f13442i;
        if (i3 == 20) {
            f13433r = 1;
            this.f13442i = i3 + 1;
        }
        if (this.f13442i == 21 && f13433r == 1) {
            Z2();
        }
    }

    public final void U2() {
        d.f();
    }

    public void V2(int... iArr) {
        l0.a aVar = l0.z.f13137a;
        l0.a.d(iArr);
    }

    public void W2(int i2) {
        int i3 = (i2 * 64) + 134230016;
        int[] iArr = {233, (i3 >> 24) & 255, (i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255, 0};
        for (int i4 = 1; i4 < 5; i4++) {
            iArr[5] = iArr[5] ^ iArr[i4];
        }
        iArr[5] = iArr[5] & 255;
        Log.d("CAN", "sendBlock block =" + i2 + "   " + o1.b0.e(iArr, 0, 6));
        V2(iArr);
    }

    public void X2() {
        int[] iArr = {233, 33, 222, 8, 0, 0, 0, 8};
        this.f13441h = 1;
        l0.a aVar = l0.z.f13137a;
        l0.a.d(iArr);
        Log.d("CAN", "sendOK3333 " + o1.b0.e(iArr, 0, 8));
        d.j(2, 3);
        this.f13442i = 0;
        this.f13444k = 0;
        d.i(this.f13450q);
    }

    public void Y2(int i2) {
        int i3 = this.f13439f;
        int i4 = i2 * 64;
        byte[] bArr = i3 - i4 >= 64 ? new byte[67] : new byte[(i3 - i4) + 3];
        bArr[0] = -23;
        if (i3 - i4 >= 64) {
            bArr[1] = 63;
        } else {
            bArr[1] = (byte) ((i3 - i4) - 1);
        }
        if (i3 - i4 >= 64) {
            System.arraycopy(this.f13448o, i4, bArr, 2, 64);
        } else {
            System.arraycopy(this.f13448o, i4, bArr, 2, i3 - i4);
        }
        bArr[bArr.length - 1] = 0;
        for (int i5 = 1; i5 < bArr.length - 1; i5++) {
            int length = bArr.length - 1;
            bArr[length] = (byte) (bArr[length] ^ bArr[i5]);
        }
        bArr[bArr.length - 1] = (byte) (bArr[bArr.length - 1] & 255);
        V2(s0.e(bArr));
        Log.d("CAN", "senddata1111 block =  " + this.f13439f + "block =" + i4);
        StringBuilder sb = new StringBuilder();
        sb.append("senddata1111 block = ");
        sb.append(i2);
        sb.append(o1.b0.d(bArr, 0, bArr.length));
        Log.d("CAN", sb.toString());
        d.j(1, 100);
        d.j(0, ((i2 + 1) * 100) / (this.f13439f / 64));
    }

    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        Throwable th;
        if (i2 != 0) {
            return;
        }
        b.f13172e = 1;
        U2();
        this.f13445l = 0;
        this.f13444k = 1;
        this.f13446m = 0;
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(strArr[0]);
                try {
                    int iAvailable = fileInputStream2.available();
                    this.f13439f = iAvailable;
                    byte[] bArr = new byte[iAvailable];
                    Log.d("CAN", "LsssGsize = " + this.f13439f);
                    a.f.p().s("size = " + this.f13439f);
                    f13433r = 0;
                    this.f13441h = 0;
                    this.f13440g = 0;
                    this.f13442i = 0;
                    this.f13444k = 0;
                    int i3 = this.f13439f - 12288;
                    this.f13439f = i3;
                    if (i3 % 64 == 0) {
                        this.f13443j = i3 / 64;
                    } else if (i3 % 64 != 0) {
                        this.f13443j = (i3 / 64) + 1;
                    }
                    d.j(2, 1);
                    fileInputStream2.read(bArr);
                    int i4 = this.f13439f;
                    this.f13449p = i4;
                    byte[] bArr2 = new byte[i4];
                    this.f13448o = bArr2;
                    System.arraycopy(bArr, 12288, bArr2, 0, i4);
                    Log.d("CAN", "senddataS =" + o1.b0.d(this.f13448o, 0, 10));
                    Log.d("CAN", "senddataS =" + o1.b0.d(this.f13448o, 12288, 10));
                    Log.d("CAN", "size =" + this.f13439f + " mBuffer1=" + ((int) this.f13448o[this.f13439f - 5]) + " mBuffer2=" + ((int) this.f13448o[this.f13439f - 4]) + " mBuffer3=" + ((int) this.f13448o[this.f13439f - 3]) + " mBuffer4=" + ((int) this.f13448o[this.f13439f - 2]) + " mBuffer5=" + ((int) this.f13448o[this.f13439f - 1]));
                    StringBuilder sb = new StringBuilder();
                    sb.append("senddataE =");
                    sb.append(o1.b0.d(this.f13448o, this.f13439f - 10, 10));
                    Log.d("CAN", sb.toString());
                    a3(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127);
                    a.i.a0(100L);
                    a3(127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127);
                    a.i.a0(100L);
                    try {
                        fileInputStream2.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    Log.d("CAN", "requestUpdateLG");
                    a.f.p().s("requestUpdate");
                    d.b(this.f13450q);
                } catch (Exception e3) {
                    e = e3;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    Log.d("CAN", e.getMessage());
                    a.f.p().s("读取文件失败");
                    d.j(2, 4);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream == null) {
                        throw th;
                    }
                    try {
                        fileInputStream.close();
                        throw th;
                    } catch (Exception e5) {
                        e5.printStackTrace();
                        throw th;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e6) {
            e = e6;
        }
    }

    public void Z2() {
        int[] iArr = {233, 49, 206};
        l0.a aVar = l0.z.f13137a;
        l0.a.d(iArr);
        Log.d("CAN", "sendwrite222" + o1.b0.e(iArr, 0, 3));
    }

    public void a3(int... iArr) {
        int length = iArr.length + 1;
        int[] iArr2 = new int[length];
        iArr2[0] = 233;
        for (int i2 = 1; i2 < length; i2++) {
            iArr2[i2] = iArr[i2 - 1];
        }
        V2(iArr2);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        for (byte b2 : bArr) {
            T2(b2);
        }
        if (this.f13436c + bArr.length > 1024) {
            this.f13436c = 0;
            this.f13437d = 0;
            this.f13438e = 0;
        }
        System.arraycopy(bArr, 0, this.f13435b, this.f13436c, bArr.length);
        int length = this.f13436c + bArr.length;
        this.f13436c = length;
        int i5 = this.f13438e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b3 = this.f13435b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13438e;
                if (i6 >= i4) {
                    break;
                }
                b3 = (byte) (b3 + this.f13435b[i6]);
                i6++;
            }
            if (((byte) (~b3)) == this.f13435b[i4]) {
                this.f13437d = i4 + 1;
            } else {
                this.f13437d = 1;
            }
            this.f13438e = 0;
        }
        int i7 = this.f13436c - 2;
        while (true) {
            i2 = this.f13437d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr2 = this.f13435b;
            if (bArr2[i2] == 46) {
                int i8 = bArr2[i2 + 2] & 255;
                this.f13438e = i8;
                if (i8 > 512) {
                    this.f13438e = 0;
                } else {
                    int i9 = i8 + i2 + 3;
                    this.f13438e = i9;
                    if (i9 >= this.f13436c) {
                        this.f13438e = i9 - i2;
                        break;
                    }
                    byte b4 = bArr2[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f13438e;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13435b[i10]);
                        i10++;
                    }
                    if (((byte) (~b4)) == this.f13435b[i3]) {
                        this.f13437d = i3;
                    } else {
                        this.f13437d++;
                    }
                    this.f13438e = 0;
                }
            }
            this.f13437d++;
        }
        if (i2 != 0) {
            int i11 = this.f13436c - i2;
            this.f13436c = i11;
            if (i11 > 0) {
                byte[] bArr3 = this.f13435b;
                System.arraycopy(bArr3, i2, bArr3, 0, i11);
            }
            this.f13437d = 0;
        }
    }
}
