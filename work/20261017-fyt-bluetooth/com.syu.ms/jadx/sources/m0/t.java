package m0;

import android.util.Log;
import java.io.FileInputStream;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class t extends m0.a implements o1.q {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static int f13401s;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public byte[] f13417p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f13418q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13402a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13403b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13404c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13405d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13406e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13407f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13408g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13409h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13410i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f13411j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13412k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13413l = -1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13414m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13415n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public byte[] f13416o = new byte[64];

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public Runnable f13419r = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().s(" mRequestUpgradeMode  mUpgradeStep == " + t.this.f13413l);
            if (t.this.f13413l != 1) {
                d.h(this);
                return;
            }
            t.R2(t.this);
            if (t.this.f13415n == 4) {
                t.this.f13415n = 0;
                t.this.U2();
                return;
            }
            t.this.a3(127);
            a.i.a0(100L);
            t.this.a3(127);
            a.i.a0(100L);
            t.this.a3(127);
            a.i.a0(100L);
            t.this.a3(127);
            a.i.a0(100L);
            t.this.a3(127);
            a.i.a0(100L);
            t.this.a3(127);
            a.i.a0(100L);
            t.this.a3(127);
            try {
                Thread.sleep(20L);
            } catch (Exception unused) {
                Log.d("CAN", "sleep exception");
            }
        }
    }

    public static /* synthetic */ int R2(t tVar) {
        int i2 = tVar.f13415n;
        tVar.f13415n = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13413l == 0) {
            d.i(this.f13419r);
        }
        this.f13413l = -1;
        this.f13417p = null;
        b.f13172e = 0;
    }

    public void N2() {
        if (this.f13409h > 1) {
            return;
        }
        int i2 = f13401s;
        if (i2 == 0) {
            f13401s = 1;
        } else if (i2 == 1) {
            f13401s = 2;
        } else if (i2 == 2) {
            f13401s = 3;
        } else if (i2 == 3) {
            f13401s = 1;
        }
        Log.d("CAN", "sendcheck =" + f13401s + "BLOCK =" + this.f13408g + " send_ok=" + this.f13409h + " (size/64)=" + (this.f13407f / 64) + "total_block =" + this.f13411j);
        if (this.f13409h == 1) {
            W2(0);
            this.f13409h = 2;
            return;
        }
        if (this.f13408g + 128 >= this.f13411j) {
            X2();
            return;
        }
        if (f13401s == 1) {
            Z2();
        }
        if (f13401s == 2) {
            W2(this.f13408g);
        }
        if (f13401s == 3) {
            Y2(this.f13408g);
            this.f13408g++;
        }
    }

    public void T2(byte b2) {
        Log.d("CAN", "ack data =" + ((int) b2));
        if (b2 != 31) {
            if (b2 != 121) {
                return;
            }
            if (this.f13410i != 0) {
                N2();
                return;
            } else {
                this.f13410i = 1;
                return;
            }
        }
        if (this.f13410i == 1) {
            N2();
            this.f13410i = 2;
        }
        this.f13413l = 2;
        if (this.f13410i == 2) {
            Z2();
            this.f13408g = 0;
            f13401s = 1;
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
        this.f13409h = 1;
        l0.a aVar = l0.z.f13137a;
        l0.a.d(233, 33, 222);
        d.j(2, 3);
    }

    public void Y2(int i2) {
        Log.d("CAN", "senddata block =" + i2);
        int i3 = this.f13407f;
        int i4 = (i2 + 128) * 64;
        byte[] bArr = i3 - i4 >= 64 ? new byte[67] : new byte[(i3 - i4) + 3];
        bArr[0] = -23;
        if (i3 - i4 >= 64) {
            bArr[1] = 63;
        } else {
            bArr[1] = (byte) ((i3 - i4) - 1);
        }
        if (i3 - i4 >= 64) {
            System.arraycopy(this.f13417p, i4, bArr, 2, 64);
        } else {
            System.arraycopy(this.f13417p, i4, bArr, 2, i3 - i4);
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
        d.j(0, (((i2 + 1) + 128) * 100) / (this.f13407f / 64));
    }

    /* JADX WARN: Code duplicated, block: B:48:0x00d7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
                    this.f13407f = fileInputStream.available();
                    Log.d("CAN", "LGsize = " + this.f13407f);
                    a.f.p().s("size = " + this.f13407f);
                    f13401s = 0;
                    this.f13409h = 0;
                    this.f13412k = 1;
                    this.f13408g = 0;
                    int i3 = this.f13407f;
                    if (i3 % 64 == 0) {
                        this.f13411j = i3 / 64;
                    } else if (i3 % 64 != 0) {
                        this.f13411j = (i3 / 64) + 1;
                    }
                    d.j(2, 1);
                    int i4 = this.f13407f;
                    this.f13418q = i4;
                    this.f13417p = new byte[i4];
                    a3(127);
                    fileInputStream.read(this.f13417p);
                    try {
                        fileInputStream.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    Log.d("CAN", "requestUpdateLG");
                    a.f.p().s("requestUpdate");
                    b.f13172e = 1;
                    U2();
                    this.f13414m = 0;
                    this.f13413l = 1;
                    this.f13415n = 0;
                    this.f13410i = 0;
                    d.a(this.f13419r);
                } catch (Exception e4) {
                    e2 = e4;
                    e2.printStackTrace();
                    Log.d("CAN", e2.getMessage());
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
        this.f13412k = 2;
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
        if (this.f13404c + bArr.length > 1024) {
            this.f13404c = 0;
            this.f13405d = 0;
            this.f13406e = 0;
        }
        System.arraycopy(bArr, 0, this.f13403b, this.f13404c, bArr.length);
        int length = this.f13404c + bArr.length;
        this.f13404c = length;
        int i5 = this.f13406e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b3 = this.f13403b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13406e;
                if (i6 >= i4) {
                    break;
                }
                b3 = (byte) (b3 + this.f13403b[i6]);
                i6++;
            }
            if (((byte) (~b3)) == this.f13403b[i4]) {
                this.f13405d = i4 + 1;
            } else {
                this.f13405d = 1;
            }
            this.f13406e = 0;
        }
        int i7 = this.f13404c - 2;
        while (true) {
            i2 = this.f13405d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr2 = this.f13403b;
            if (bArr2[i2] == 46) {
                int i8 = bArr2[i2 + 2] & 255;
                this.f13406e = i8;
                if (i8 > 512) {
                    this.f13406e = 0;
                } else {
                    int i9 = i8 + i2 + 3;
                    this.f13406e = i9;
                    if (i9 >= this.f13404c) {
                        this.f13406e = i9 - i2;
                        break;
                    }
                    byte b4 = bArr2[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f13406e;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13403b[i10]);
                        i10++;
                    }
                    if (((byte) (~b4)) == this.f13403b[i3]) {
                        this.f13405d = i3;
                    } else {
                        this.f13405d++;
                    }
                    this.f13406e = 0;
                }
            }
            this.f13405d++;
        }
        if (i2 != 0) {
            int i11 = this.f13404c - i2;
            this.f13404c = i11;
            if (i11 > 0) {
                byte[] bArr3 = this.f13403b;
                System.arraycopy(bArr3, i2, bArr3, 0, i11);
            }
            this.f13405d = 0;
        }
    }
}
