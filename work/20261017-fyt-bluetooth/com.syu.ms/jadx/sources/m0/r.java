package m0;

import android.util.Log;
import java.io.FileInputStream;
import k0.qt;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class r extends m0.a implements o1.q {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f13388h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13381a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13382b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13383c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13384d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13385e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13386f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13387g = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f13389i = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a.f.p().s(" mRequestUpgradeMode  mUpgradeStep == " + r.this.f13386f);
            if (r.this.f13386f != 0) {
                d.i(this);
                return;
            }
            r.Q2(r.this);
            if (r.this.f13387g == 4) {
                r.this.f13387g = 0;
                r.this.T2();
            } else {
                l0.z.f13137a.f(46, 217, 5, 1, 94, 106, -22, -121);
                try {
                    Thread.sleep(20L);
                } catch (Exception unused) {
                    Log.d("CAN", "sleep exception");
                }
                a.f.p().s("请求进入CAN盒自身的升级模式");
            }
        }
    }

    public static /* synthetic */ int Q2(r rVar) {
        int i2 = rVar.f13387g;
        rVar.f13387g = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13386f == 0) {
            d.i(this.f13389i);
        }
        this.f13386f = -1;
        this.f13388h = null;
        b.f13172e = 0;
    }

    public void S2() {
        l0.a aVar = l0.z.f13137a;
        l0.a.d(233, 255);
    }

    public final void T2() {
        d.f();
    }

    public void U2(byte[] bArr, int i2, int i3) {
        Log.d("CAN", "SOUL :" + o1.b0.d(bArr, i2, i3));
        if (bArr[i2] != 105) {
            return;
        }
        byte b2 = bArr[i2 + 2];
        if (b2 != -121) {
            if (b2 == 1) {
                a.f.p().s("准备");
                this.f13386f = 1;
                l0.z.f13137a.f(46, 217, 1, 129);
                d.j(2, 1);
                d.j(1, 100);
                return;
            }
            if (b2 == 2) {
                int i4 = bArr[i2 + 3] & 255;
                int i5 = i2 + 4;
                int i6 = i2 + 5;
                int i7 = i2 + 6;
                int i8 = ((bArr[i5] & 255) << 16) | ((bArr[i6] & 255) << 8) | (bArr[i7] & 255);
                byte[] bArr2 = new byte[i4 + 7];
                byte[] bArr3 = this.f13388h;
                if (bArr3.length < i4 + i8) {
                    return;
                }
                System.arraycopy(bArr3, i8, bArr2, 7, i4);
                bArr2[0] = 46;
                bArr2[1] = -39;
                bArr2[2] = (byte) (i4 + 4);
                bArr2[3] = -125;
                bArr2[4] = bArr[i5];
                bArr2[5] = bArr[i6];
                bArr2[6] = bArr[i7];
                l0.z.f13137a.f(s0.e(bArr2));
                return;
            }
            switch (b2) {
                case -125:
                    d.j(0, bArr[i2 + 3] & 255);
                    return;
                case -124:
                    d.j(2, 4);
                    return;
                case -123:
                    d.j(2, 3);
                    a.i.a0(3000L);
                    l0.z.f13137a.f(46, 144, 1, 217);
                    break;
                default:
                    return;
            }
        }
        qt.L(new String(bArr, i2 + 3, i3 - 3));
    }

    /* JADX WARN: Code duplicated, block: B:43:0x00a0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
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
                    Log.d("CAN", "size = " + iAvailable);
                    a.f.p().s("size = " + iAvailable);
                    byte[] bArr = new byte[iAvailable];
                    this.f13388h = bArr;
                    fileInputStream.read(bArr);
                    try {
                        fileInputStream.close();
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    Log.d("CAN", "requestUpdate");
                    a.f.p().s("requestUpdate");
                    b.f13172e = 1;
                    T2();
                    this.f13386f = 0;
                    this.f13387g = 0;
                    d.b(this.f13389i);
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
        if (this.f13383c + bArr.length > 1024) {
            this.f13383c = 0;
            this.f13384d = 0;
            this.f13385e = 0;
        }
        System.arraycopy(bArr, 0, this.f13382b, this.f13383c, bArr.length);
        int length = this.f13383c + bArr.length;
        this.f13383c = length;
        int i5 = this.f13385e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13382b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13385e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13382b[i6]);
                i6++;
            }
            if (((byte) (~b2)) == this.f13382b[i4]) {
                S2();
                U2(this.f13382b, 1, this.f13385e - 1);
                this.f13384d = this.f13385e + 1;
            } else {
                this.f13384d = 1;
            }
            this.f13385e = 0;
        }
        int i7 = this.f13383c - 2;
        while (true) {
            i2 = this.f13384d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr2 = this.f13382b;
            if (bArr2[i2] == 46) {
                int i8 = (bArr2[i2 + 2] & 255) + 3;
                this.f13385e = i8;
                int i9 = i8 + i2;
                this.f13385e = i9;
                if (i9 >= this.f13383c) {
                    this.f13385e = i9 - i2;
                    break;
                }
                byte b3 = bArr2[i2 + 1];
                int i10 = i2 + 2;
                while (true) {
                    i3 = this.f13385e;
                    if (i10 >= i3) {
                        break;
                    }
                    b3 = (byte) (b3 + this.f13382b[i10]);
                    i10++;
                }
                if (((byte) (~b3)) == this.f13382b[i3]) {
                    S2();
                    byte[] bArr3 = this.f13382b;
                    int i11 = this.f13384d;
                    U2(bArr3, i11 + 1, (this.f13385e - i11) - 1);
                    this.f13384d = this.f13385e;
                } else {
                    this.f13384d++;
                }
                this.f13385e = 0;
            }
            this.f13384d++;
        }
        if (i2 != 0) {
            int i12 = this.f13383c - i2;
            this.f13383c = i12;
            if (i12 != 0) {
                byte[] bArr4 = this.f13382b;
                System.arraycopy(bArr4, i2, bArr4, 0, i12);
            }
            this.f13384d = 0;
        }
    }
}
