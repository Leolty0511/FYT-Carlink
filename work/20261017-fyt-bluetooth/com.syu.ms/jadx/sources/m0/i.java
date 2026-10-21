package m0;

import android.util.Log;
import java.io.FileInputStream;
import k0.nt;
import o1.s0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class i extends m0.a implements o1.q {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte[] f13244k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13245l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13234a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13235b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13236c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13237d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13238e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f13239f = {0};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13240g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13241h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13242i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f13243j = new byte[64];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f13246m = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.d("CAN", " mRequestUpgradeMode  mUpgradeStep == " + i.this.f13240g);
            a.f.p().s(" mRequestUpgradeMode  mUpgradeStep == " + i.this.f13240g);
            if (i.this.f13240g == 0) {
                i.R2(i.this);
                if (i.this.f13242i == 4) {
                    i.this.f13242i = 0;
                    i.this.V2();
                    return;
                }
                if (nt.f8633a != 14352839) {
                    l0.z.f13137a.f(46, 225, 4, i.this.f13244k[i.this.f13245l - 4], i.this.f13244k[i.this.f13245l - 3], i.this.f13244k[i.this.f13245l - 2], i.this.f13244k[i.this.f13245l - 1]);
                }
                try {
                    Thread.sleep(20L);
                } catch (Exception unused) {
                    Log.d("CAN", "sleep exception");
                }
                Log.d("CAN", " 11111111111111111111 update mRequestUpgradeMode");
                a.f.p().s("请求进入CAN盒自身的升级模式");
                return;
            }
            if (i.this.f13240g != 1) {
                d.i(this);
                return;
            }
            int i2 = (i.this.f13245l - 4) / 128;
            byte[] bArr = {-29, -27, 2, (byte) (i2 >> 8), (byte) (i2 & 255)};
            Log.d("CAN", "block =" + i2);
            if (nt.f8633a == 14352839) {
                try {
                    Thread.sleep(500L);
                } catch (Exception unused2) {
                }
                z.k.q(46, -27, 2, bArr[3], bArr[4], (byte) ((((bArr[3] + 231) + bArr[4]) & 255) ^ 255));
            } else {
                l0.z.f13137a.f(s0.e(bArr));
            }
            i.this.f13240g = 2;
        }
    }

    public static /* synthetic */ int R2(i iVar) {
        int i2 = iVar.f13242i;
        iVar.f13242i = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13240g == 0) {
            d.i(this.f13246m);
        }
        this.f13240g = -1;
        this.f13244k = null;
        b.f13172e = 0;
    }

    public final void V2() {
        d.f();
    }

    public void W2(byte[] bArr, int i2, int i3) {
        Log.d("CAN", "SOUL :" + o1.b0.d(bArr, i2, i3));
        byte b2 = bArr[i2];
        if (b2 == -30) {
            X2(bArr[i2 + 2]);
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
        int i8 = this.f13245l;
        if (i8 - 4 != 0) {
            d.j(0, (i7 * 100) / ((i8 - 4) / 128));
        }
        byte[] bArr3 = this.f13244k;
        if (bArr3 != null) {
            if (this.f13245l >= i6 + 128) {
                System.arraycopy(bArr3, i6, bArr2, 5, 128);
            }
            if (nt.f8633a != 14352839) {
                bArr2[0] = -29;
                bArr2[1] = -29;
                bArr2[2] = -126;
                bArr2[3] = (byte) (i7 >> 8);
                bArr2[4] = (byte) (i7 & 255);
                l0.z.f13137a.f(s0.e(bArr2));
                return;
            }
            byte[] bArr4 = new byte[134];
            bArr2[0] = 46;
            bArr2[1] = -29;
            bArr2[2] = -126;
            bArr2[3] = (byte) (i7 >> 8);
            bArr2[4] = (byte) (i7 & 255);
            System.arraycopy(bArr2, 0, bArr4, 0, 133);
            bArr4[133] = 0;
            for (int i9 = 1; i9 < 133; i9++) {
                bArr4[133] = (byte) (bArr4[133] + bArr2[i9]);
            }
            bArr4[133] = (byte) (bArr4[133] ^ 255);
            z.k.q(bArr4);
        }
    }

    public final void X2(byte b2) {
        if (b2 == 0) {
            d.j(2, 4);
            return;
        }
        if (b2 != 1) {
            if (b2 == 2) {
                this.f13240g = 2;
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
        int i2 = (this.f13245l - 4) / 128;
        byte[] bArr = {-29, -27, 2, (byte) (i2 >> 8), (byte) (i2 & 255)};
        Log.d("CAN", "block =" + i2);
        if (nt.f8633a == 14352839) {
            try {
                Thread.sleep(500L);
            } catch (Exception unused) {
                Log.d("CAN", "sleep exception");
            }
            z.k.q(46, -27, 2, bArr[3], bArr[4], (byte) ((((bArr[3] + 231) + bArr[4]) & 255) ^ 255));
        } else {
            l0.z.f13137a.f(s0.e(bArr));
        }
        this.f13240g = 1;
    }

    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        Throwable th;
        if (i2 != 0 || strArr == null || strArr.length <= 0) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(strArr[0]);
                try {
                    int iAvailable = fileInputStream2.available();
                    Log.d("CAN", "size = " + iAvailable);
                    a.f.p().s("size = " + iAvailable);
                    this.f13245l = iAvailable;
                    byte[] bArr = new byte[iAvailable];
                    this.f13244k = bArr;
                    fileInputStream2.read(bArr);
                    if (nt.f8633a == 14352839) {
                        byte[] bArr2 = this.f13244k;
                        int i3 = iAvailable - 4;
                        int i4 = iAvailable - 3;
                        int i5 = iAvailable - 2;
                        int i6 = iAvailable - 1;
                        z.k.q(46, -31, 4, bArr2[i3], bArr2[i4], bArr2[i5], bArr2[i6], (byte) ((((((bArr2[i3] + 229) + bArr2[i4]) + bArr2[i5]) + bArr2[i6]) & 255) ^ 255));
                    } else {
                        l0.a aVar = l0.z.f13137a;
                        byte[] bArr3 = this.f13244k;
                        aVar.f(46, 225, 4, bArr3[iAvailable - 4], bArr3[iAvailable - 3], bArr3[iAvailable - 2], bArr3[iAvailable - 1]);
                    }
                    try {
                        fileInputStream2.close();
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                    Log.d("CAN", "requestUpdate");
                    a.f.p().s("requestUpdate");
                    b.f13172e = 1;
                    V2();
                    this.f13241h = 0;
                    this.f13240g = 0;
                    this.f13242i = 0;
                    d.b(this.f13246m);
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

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Update Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13236c + bArr.length > 1024) {
            this.f13236c = 0;
            this.f13237d = 0;
            this.f13238e = 0;
        }
        System.arraycopy(bArr, 0, this.f13235b, this.f13236c, bArr.length);
        int length = this.f13236c + bArr.length;
        this.f13236c = length;
        int i5 = this.f13238e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13235b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13238e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13235b[i6]);
                i6++;
            }
            byte b3 = (byte) (~b2);
            byte[] bArr2 = this.f13235b;
            if (b3 == bArr2[i4]) {
                W2(bArr2, 1, i4 - 1);
                this.f13237d = this.f13238e + 1;
            } else {
                this.f13237d = 1;
            }
            this.f13238e = 0;
        }
        int i7 = this.f13236c - 2;
        while (true) {
            i2 = this.f13237d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13235b;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f13238e = i8;
                if (i8 > 512) {
                    this.f13238e = 0;
                } else {
                    int i9 = i8 + i2 + 3;
                    this.f13238e = i9;
                    if (i9 >= this.f13236c) {
                        this.f13238e = i9 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f13238e;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13235b[i10]);
                        i10++;
                    }
                    byte b5 = (byte) (~b4);
                    byte[] bArr4 = this.f13235b;
                    if (b5 == bArr4[i3]) {
                        int i11 = this.f13237d;
                        W2(bArr4, i11 + 1, (i3 - i11) - 1);
                        this.f13237d = this.f13238e;
                    } else {
                        this.f13237d++;
                    }
                    this.f13238e = 0;
                }
            }
            this.f13237d++;
        }
        if (i2 != 0) {
            int i12 = this.f13236c - i2;
            this.f13236c = i12;
            if (i12 > 0) {
                byte[] bArr5 = this.f13235b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13237d = 0;
        }
    }
}
