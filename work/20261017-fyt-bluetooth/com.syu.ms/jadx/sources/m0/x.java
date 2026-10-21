package m0;

import android.util.Log;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class x extends m0.a implements o1.q {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public byte[] f13473h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13474i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f13466a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f13467b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13468c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13469d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13470e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13471f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte[] f13472g = new byte[136];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f13475j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f13476k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f13477l = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13478m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13479n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f13480o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f13481p = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (x.this.f13470e != 0) {
                d.i(this);
                return;
            }
            x.Q2(x.this);
            if (x.this.f13471f == 4) {
                x.this.f13471f = 0;
                x.this.Y2();
                return;
            }
            Log.d("CAN", "REQUEST CANBUS UPDATE");
            if (x.this.f13480o < 3) {
                if (x.this.f13480o == 0) {
                    l0.a aVar = l0.z.f13137a;
                    byte[] bArr = x.this.f13473h;
                    x xVar = x.this;
                    aVar.f(46, 2, -32, bArr[xVar.f13479n - 2], xVar.f13473h[x.this.f13479n - 1]);
                }
                x.U2(x.this);
                return;
            }
            if (x.this.f13480o >= 3) {
                if (x.this.f13480o == 3) {
                    l0.a aVar2 = l0.z.f13137a;
                    byte[] bArr2 = x.this.f13473h;
                    x xVar2 = x.this;
                    aVar2.f(46, 2, -32, bArr2[xVar2.f13479n - 2], xVar2.f13473h[x.this.f13479n - 1]);
                }
                x.U2(x.this);
                if (x.this.f13480o == 6) {
                    x.this.f13480o = 0;
                }
            }
        }
    }

    public static /* synthetic */ int Q2(x xVar) {
        int i2 = xVar.f13471f;
        xVar.f13471f = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int U2(x xVar) {
        int i2 = xVar.f13480o;
        xVar.f13480o = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13470e == 0) {
            d.i(this.f13481p);
        }
        this.f13470e = -1;
        this.f13473h = null;
        b.f13172e = 0;
    }

    public void W2() {
        l0.a aVar = l0.z.f13137a;
        l0.a.d(233, 25, 120, 2, 23);
    }

    public void X2() {
        l0.a aVar = l0.z.f13137a;
        l0.a.d(233, 69);
    }

    public final void Y2() {
        Log.d("CAN", "REQUEST MCU TO CANBUS UPDATE");
        d.f();
    }

    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        if (i2 != 0) {
            return;
        }
        this.f13470e = 0;
        Y2();
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(strArr[0]);
                try {
                    int iAvailable = fileInputStream2.available();
                    this.f13479n = iAvailable;
                    if (iAvailable == 0) {
                        Log.d("CAN", "size == 0 or not 136*n");
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
                    if (iAvailable > 2097152) {
                        Log.d("CAN", "to large");
                        d.j(2, 6);
                        try {
                            fileInputStream2.close();
                            return;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    }
                    Log.d("CAN", "size = " + this.f13479n);
                    int i3 = this.f13479n;
                    if (i3 % 136 != 0) {
                        this.f13474i = ((i3 / 136) + 1) * 136;
                    } else {
                        this.f13474i = (i3 / 136) * 136;
                    }
                    byte[] bArr = new byte[this.f13474i];
                    this.f13473h = bArr;
                    fileInputStream2.read(bArr);
                    try {
                        fileInputStream2.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    Log.d("CAN", "requestUpdate");
                    b.f13172e = 1;
                    Y2();
                    a.i.a0(100L);
                    this.f13475j = true;
                    this.f13471f = 0;
                    this.f13470e = 0;
                    this.f13480o = 0;
                    d.b(this.f13481p);
                } catch (Exception e5) {
                    e = e5;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    Log.d("CAN", e.getMessage());
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
            } catch (Exception e8) {
                e = e8;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void Z2(byte... bArr) {
        int[] iArr = new int[bArr.length + 1 + 5];
        Log.d("CAN", "respNum = " + this.f13469d);
        int i2 = 0;
        iArr[0] = -23;
        iArr[1] = 1;
        iArr[2] = this.f13469d & 255;
        iArr[3] = 255 - iArr[2];
        for (int i3 = 4; i3 < 140; i3++) {
            iArr[i3] = bArr[i3 - 4] & 255;
            i2 += iArr[i3];
        }
        iArr[140] = (i2 >> 8) & 255;
        iArr[141] = i2 & 255;
        l0.a aVar = l0.z.f13137a;
        l0.a.d(iArr);
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        if (bArr == null || bArr.length <= 0 || !this.f13475j) {
            return;
        }
        if (this.f13468c + bArr.length > 1024) {
            this.f13468c = 0;
        }
        System.arraycopy(bArr, 0, this.f13466a, this.f13468c, bArr.length);
        this.f13468c += bArr.length;
        Log.d("CAN", o1.b0.d(bArr, 0, bArr.length));
        byte[] bArr2 = this.f13466a;
        int i2 = this.f13468c;
        byte b2 = bArr2[i2 - 1];
        if (b2 == -86) {
            this.f13477l = true;
            return;
        }
        if (b2 == 69) {
            if (this.f13477l) {
                this.f13477l = false;
            }
            if (this.f13470e == 1) {
                this.f13470e = 0;
                return;
            }
            if (i2 >= 2 && bArr2[i2 - 2] == 82) {
                Log.d("CAN", "BBBBBB");
                d.j(2, 4);
            }
            if (this.f13476k) {
                Log.d("CAN", "updata OK ");
                d.j(2, 3);
            }
            this.f13468c = 0;
            return;
        }
        if (b2 != 83) {
            if (b2 != 85) {
                if (this.f13477l) {
                    this.f13477l = false;
                    return;
                }
                return;
            }
            if ((i2 >= 2 && bArr2[i2 - 2] == -86) || (i2 == 1 && this.f13477l)) {
                this.f13477l = false;
                Log.d("CAN", "CANaaa");
                if (this.f13470e == 0) {
                    d.j(2, 1);
                    return;
                }
                return;
            }
            if (this.f13470e == 0) {
                this.f13470e = 1;
                W2();
                Log.d("CAN", "updata  1");
                d.j(2, 1);
            }
            this.f13468c = 0;
            return;
        }
        if (this.f13477l) {
            this.f13477l = false;
        }
        if (i2 >= 2 && bArr2[i2 - 2] == 66) {
            Log.d("CAN", "uodata  2");
            d.j(2, 1);
        }
        int i3 = this.f13468c;
        if (i3 >= 2 && this.f13466a[i3 - 2] == 82) {
            int i4 = this.f13470e;
            if (i4 >= 1) {
                this.f13469d = i4 - 2;
                Log.d("CAN", "respNum =" + this.f13469d);
                int i5 = this.f13469d;
                if ((i5 + 1) * 136 <= this.f13474i) {
                    System.arraycopy(this.f13473h, i5 * 136, this.f13472g, 0, 136);
                    if (this.f13469d + 1 == this.f13474i / 136) {
                        this.f13476k = true;
                    }
                    Z2(this.f13472g);
                    Log.d("CAN", "updataing  " + (this.f13469d + 1) + "/" + (this.f13474i / 136));
                    d.j(2, 2);
                    d.j(1, 100);
                    d.j(0, ((this.f13469d + 1) * 100) / (this.f13474i / 136));
                }
            }
            this.f13468c = 0;
            return;
        }
        Log.d("CAN", "aaa mUpgradeStep= " + this.f13470e);
        int i6 = this.f13470e;
        if (i6 >= 1) {
            int i7 = i6 + 1;
            this.f13470e = i7;
            this.f13469d = i7 - 2;
            Log.d("CAN", "respNum =" + this.f13469d);
            Log.d("CAN", "aaa mBufferSize= " + this.f13474i + " (respNum+1) * 136= " + ((this.f13469d + 1) * 136));
            int i8 = this.f13469d;
            if ((i8 + 1) * 136 <= this.f13474i) {
                System.arraycopy(this.f13473h, i8 * 136, this.f13472g, 0, 136);
                if (this.f13469d + 1 == this.f13474i / 136) {
                    this.f13476k = true;
                }
                Z2(this.f13472g);
                Log.d("CAN", "aaa= " + (this.f13469d + 1) + "/" + (this.f13474i / 136));
                d.j(2, 2);
                d.j(1, 100);
                d.j(0, ((this.f13469d + 1) * 100) / (this.f13474i / 136));
                if (this.f13469d + 1 == this.f13474i / 136) {
                    Log.d("CAN", "aSSSaa= " + (this.f13469d + 1) + "/" + (this.f13474i / 136));
                    X2();
                } else {
                    Log.d("CAN", "end");
                }
            } else {
                X2();
            }
        }
        this.f13468c = 0;
    }
}
