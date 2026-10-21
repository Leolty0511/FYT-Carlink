package m0;

import android.util.Log;
import java.io.FileInputStream;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class g extends m0.a implements o1.q {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static int f13198r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte[] f13213o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f13214p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13199a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13200b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13201c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13202d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13203e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13204f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13205g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13206h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13207i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f13208j = 1;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13209k = -1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13210l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13211m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte[] f13212n = new byte[64];

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public Runnable f13215q = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().s(" mRequestUpgradeMode  mUpgradeStep == " + g.this.f13209k);
            if (g.this.f13209k != 1) {
                d.h(this);
                return;
            }
            g.R2(g.this);
            if (g.this.f13211m == 4) {
                g.this.f13211m = 0;
                g.this.U2();
            } else {
                g.this.a3(127);
                try {
                    Thread.sleep(20L);
                } catch (Exception unused) {
                    Log.d("CAN", "sleep exception");
                }
                a.f.p().s("请求进入CAN盒自身的升级模式");
            }
        }
    }

    public static /* synthetic */ int R2(g gVar) {
        int i2 = gVar.f13211m;
        gVar.f13211m = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13209k == 0) {
            d.i(this.f13215q);
        }
        this.f13209k = -1;
        this.f13213o = null;
        b.f13172e = 0;
    }

    public void N2() {
        if (this.f13206h > 1) {
            return;
        }
        int i2 = f13198r;
        if (i2 == 0) {
            f13198r = 1;
        } else if (i2 == 1) {
            f13198r = 2;
        } else if (i2 == 2) {
            f13198r = 3;
        } else if (i2 == 3) {
            f13198r = 1;
        }
        Log.d("CAN", "sendcheck =" + f13198r + "BLOCK =" + this.f13205g + " send_ok=" + this.f13206h + " (size/64)=" + (this.f13204f / 64) + "total_block =" + this.f13207i);
        if (this.f13206h == 1) {
            W2(0);
            this.f13206h = 2;
            return;
        }
        if (this.f13205g + 128 >= this.f13207i) {
            X2();
            return;
        }
        if (f13198r == 1) {
            Z2();
        }
        if (f13198r == 2) {
            W2(this.f13205g);
        }
        if (f13198r == 3) {
            Y2(this.f13205g);
            this.f13205g++;
        }
    }

    public void T2(byte b2) {
        Log.d("CAN", "ack data =" + ((int) b2));
        if (b2 != 31) {
            if (b2 != 121) {
                return;
            }
            this.f13209k = 2;
            N2();
            return;
        }
        if (this.f13206h > 1) {
            return;
        }
        if (f13198r == 1) {
            Z2();
        }
        if (f13198r == 2) {
            W2(this.f13205g);
        }
        if (f13198r == 3) {
            int i2 = this.f13205g;
            if (i2 != 0) {
                Y2(i2 - 1);
            } else {
                Y2(0);
            }
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
        int i3 = (i2 * 64) + 134225920;
        Log.d("CAN", "sendBlock block =" + i2);
        int[] iArr = {233, (i3 >> 24) & 255, (i3 >> 16) & 255, (i3 >> 8) & 255, i3 & 255, 0};
        for (int i4 = 1; i4 < 5; i4++) {
            iArr[5] = iArr[5] ^ iArr[i4];
        }
        iArr[5] = iArr[5] & 255;
        V2(iArr);
    }

    public void X2() {
        Log.d("CAN", "sendOK");
        this.f13206h = 1;
        l0.a aVar = l0.z.f13137a;
        l0.a.d(233, 33, 222);
        d.j(2, 3);
    }

    public void Y2(int i2) {
        Log.d("CAN", "senddata block =" + i2);
        int i3 = this.f13204f;
        int i4 = (i2 + 128) * 64;
        byte[] bArr = i3 - i4 >= 64 ? new byte[67] : new byte[(i3 - i4) + 3];
        bArr[0] = -23;
        if (i3 - i4 >= 64) {
            bArr[1] = 63;
        } else {
            bArr[1] = (byte) ((i3 - i4) - 1);
        }
        if (i3 - i4 >= 64) {
            System.arraycopy(this.f13213o, i4, bArr, 2, 64);
        } else {
            System.arraycopy(this.f13213o, i4, bArr, 2, i3 - i4);
        }
        bArr[bArr.length - 1] = 0;
        for (int i5 = 1; i5 < bArr.length - 1; i5++) {
            int length = bArr.length - 1;
            bArr[length] = (byte) (bArr[length] ^ bArr[i5]);
        }
        bArr[bArr.length - 1] = (byte) (bArr[bArr.length - 1] & 255);
        V2(s0.e(bArr));
        Log.d("CAN", o1.b0.d(bArr, 0, bArr.length));
        d.j(1, 100);
        d.j(0, (((i2 + 1) + 128) * 100) / (this.f13204f / 64));
    }

    /* JADX WARN: Code duplicated, block: B:50:0x00de A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
                    this.f13204f = fileInputStream.available();
                    Log.d("CAN", "LGsize = " + this.f13204f);
                    a.f.p().s("size = " + this.f13204f);
                    f13198r = 0;
                    this.f13206h = 0;
                    this.f13208j = 1;
                    this.f13205g = 0;
                    int i3 = this.f13204f;
                    if (i3 % 64 == 0) {
                        this.f13207i = i3 / 64;
                    } else if (i3 % 64 != 0) {
                        this.f13207i = (i3 / 64) + 1;
                    }
                    d.j(2, 1);
                    int i4 = this.f13204f;
                    this.f13214p = i4;
                    this.f13213o = new byte[i4];
                    a3(127);
                    fileInputStream.read(this.f13213o);
                    try {
                        fileInputStream.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    Log.d("CAN", "requestUpdateLG");
                    a.f.p().s("requestUpdate");
                    b.f13172e = 1;
                    U2();
                    this.f13210l = 0;
                    this.f13209k = 1;
                    this.f13211m = 0;
                    d.a(this.f13215q);
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

    public void Z2() {
        Log.d("CAN", "sendwrite");
        this.f13208j = 2;
        l0.a aVar = l0.z.f13137a;
        l0.a.d(233, 49, 206);
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
        if (this.f13201c + bArr.length > 1024) {
            this.f13201c = 0;
            this.f13202d = 0;
            this.f13203e = 0;
        }
        System.arraycopy(bArr, 0, this.f13200b, this.f13201c, bArr.length);
        int length = this.f13201c + bArr.length;
        this.f13201c = length;
        int i5 = this.f13203e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b3 = this.f13200b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13203e;
                if (i6 >= i4) {
                    break;
                }
                b3 = (byte) (b3 + this.f13200b[i6]);
                i6++;
            }
            if (((byte) (~b3)) == this.f13200b[i4]) {
                this.f13202d = i4 + 1;
            } else {
                this.f13202d = 1;
            }
            this.f13203e = 0;
        }
        int i7 = this.f13201c - 2;
        while (true) {
            i2 = this.f13202d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr2 = this.f13200b;
            if (bArr2[i2] == 46) {
                int i8 = bArr2[i2 + 2] & 255;
                this.f13203e = i8;
                if (i8 > 512) {
                    this.f13203e = 0;
                } else {
                    int i9 = i8 + i2 + 3;
                    this.f13203e = i9;
                    if (i9 >= this.f13201c) {
                        this.f13203e = i9 - i2;
                        break;
                    }
                    byte b4 = bArr2[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f13203e;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13200b[i10]);
                        i10++;
                    }
                    if (((byte) (~b4)) == this.f13200b[i3]) {
                        this.f13202d = i3;
                    } else {
                        this.f13202d++;
                    }
                    this.f13203e = 0;
                }
            }
            this.f13202d++;
        }
        if (i2 != 0) {
            int i11 = this.f13201c - i2;
            this.f13201c = i11;
            if (i11 > 0) {
                byte[] bArr3 = this.f13200b;
                System.arraycopy(bArr3, i2, bArr3, 0, i11);
            }
            this.f13202d = 0;
        }
    }
}
