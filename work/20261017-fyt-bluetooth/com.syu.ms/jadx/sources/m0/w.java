package m0;

import android.util.Log;
import java.io.FileInputStream;
import java.io.InputStream;
import k0.nt;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class w extends m0.a implements o1.q {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte[] f13458g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13459h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f13452a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f13453b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13454c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13455d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13456e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f13457f = new byte[136];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f13460i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f13461j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f13462k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13463l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Runnable f13464m = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (w.this.f13455d != 0) {
                d.i(this);
                return;
            }
            w.Q2(w.this);
            if (w.this.f13456e == 4) {
                w.this.f13456e = 0;
                w.this.W2();
                return;
            }
            Log.d("CAN", "REQUEST CANBUS UPDATE");
            if (w.this.f13463l < 3) {
                if (w.this.f13463l == 0) {
                    if (nt.f8633a == 8454438) {
                        z.k.q(90, -91, 2, -32, 0, 0, -31);
                    } else {
                        l0.z.f13137a.f(46, 2, -32, 0, 0);
                    }
                }
                w.U2(w.this);
                return;
            }
            if (w.this.f13463l >= 3) {
                if (w.this.f13463l == 3) {
                    if (nt.f8633a == 8454438) {
                        z.k.q(90, -91, 2, -32, 0, 0, -31);
                    } else {
                        l0.z.f13137a.f(46, 2, -32, 0, 0);
                    }
                }
                w.U2(w.this);
                if (w.this.f13463l == 6) {
                    w.this.f13463l = 0;
                }
            }
        }
    }

    public static /* synthetic */ int Q2(w wVar) {
        int i2 = wVar.f13456e;
        wVar.f13456e = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int U2(w wVar) {
        int i2 = wVar.f13463l;
        wVar.f13463l = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13455d == 0) {
            d.i(this.f13464m);
        }
        this.f13455d = -1;
        this.f13458g = null;
        b.f13172e = 0;
    }

    public void V2() {
        if (nt.f8633a != 8454438) {
            l0.a aVar = l0.z.f13137a;
            l0.a.d(233, 25, 120, 2, 23);
            return;
        }
        byte[] bArr = {25, 120, 2, 23};
        z.k.q(bArr);
        a.f.p().t(LogType.CANBUS, "WR OBD Update---->: " + o1.b0.d(bArr, 0, 4));
    }

    public final void W2() {
        Log.d("CAN", "REQUEST MCU TO CANBUS UPDATE");
        d.f();
    }

    public void X2(byte... bArr) {
        if (nt.f8633a == 8454438) {
            z.k.q(bArr);
            a.f.p().t(LogType.CANBUS, "WR OBD Update ---->: " + o1.b0.d(bArr, 0, bArr.length));
            return;
        }
        int length = bArr.length + 1;
        int[] iArr = new int[length];
        iArr[0] = -23;
        for (int i2 = 1; i2 < length; i2++) {
            iArr[i2] = bArr[i2 - 1] & 255;
        }
        l0.a aVar = l0.z.f13137a;
        l0.a.d(iArr);
    }

    /* JADX WARN: Code duplicated, block: B:61:0x00c1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e2;
        if (i2 != 0) {
            return;
        }
        W2();
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        InputStream inputStream = null;
        try {
            try {
                fileInputStream = new FileInputStream(strArr[0]);
                try {
                    int iAvailable = fileInputStream.available();
                    if (iAvailable == 0) {
                        Log.d("CAN", "size == 0 or not 136*n");
                        a.f.p().s("size == 0 or not 136*n");
                        d.j(2, 5);
                        try {
                            fileInputStream.close();
                            return;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    }
                    if (iAvailable > 2097152) {
                        Log.d("CAN", "to large");
                        d.j(2, 6);
                        try {
                            fileInputStream.close();
                            return;
                        } catch (Exception e4) {
                            e4.printStackTrace();
                            return;
                        }
                    }
                    Log.d("CAN", "size = " + iAvailable);
                    this.f13459h = iAvailable;
                    byte[] bArr = new byte[iAvailable];
                    this.f13458g = bArr;
                    fileInputStream.read(bArr);
                    try {
                        fileInputStream.close();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    Log.d("CAN", "requestUpdate");
                    b.f13172e = 1;
                    W2();
                    a.i.a0(100L);
                    this.f13460i = true;
                    this.f13456e = 0;
                    this.f13455d = 0;
                    this.f13463l = 0;
                    d.b(this.f13464m);
                } catch (Exception e6) {
                    e2 = e6;
                    e2.printStackTrace();
                    Log.d("CAN", e2.getMessage());
                    d.j(2, 4);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (Exception e8) {
                        e8.printStackTrace();
                    }
                }
                throw th;
            }
        } catch (Exception e9) {
            fileInputStream = null;
            e2 = e9;
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
        if (nt.f8633a == 8454438 && bArr != null) {
            a.f.p().t(LogType.CANBUS, "OBD Update Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        }
        if (bArr == null || bArr.length <= 0 || !this.f13460i) {
            return;
        }
        if (this.f13454c + bArr.length > 1024) {
            this.f13454c = 0;
        }
        System.arraycopy(bArr, 0, this.f13452a, this.f13454c, bArr.length);
        this.f13454c += bArr.length;
        Log.d("CAN", o1.b0.d(bArr, 0, bArr.length));
        byte[] bArr2 = this.f13452a;
        int i2 = this.f13454c;
        byte b2 = bArr2[i2 - 1];
        if (b2 == -86) {
            this.f13462k = true;
            return;
        }
        if (b2 == 69) {
            if (this.f13462k) {
                this.f13462k = false;
            }
            if (this.f13455d == 1) {
                this.f13455d = 0;
                return;
            }
            if (i2 >= 2 && bArr2[i2 - 2] == 82) {
                Log.d("CAN", "升级出错");
                d.j(2, 4);
            }
            if (this.f13461j) {
                Log.d("CAN", "升级完成");
                d.j(2, 3);
            }
            this.f13454c = 0;
            return;
        }
        if (b2 != 83) {
            if (b2 != 85) {
                if (this.f13462k) {
                    this.f13462k = false;
                    return;
                }
                return;
            }
            if ((i2 >= 2 && bArr2[i2 - 2] == -86) || (i2 == 1 && this.f13462k)) {
                this.f13462k = false;
                Log.d("CAN", "CAN盒未进升级模式");
                if (this.f13455d == 0) {
                    d.j(2, 1);
                    return;
                }
                return;
            }
            if (this.f13455d == 0) {
                this.f13455d = 1;
                V2();
                Log.d("CAN", "开始升级 1");
                d.j(2, 1);
            }
            this.f13454c = 0;
            return;
        }
        if (this.f13462k) {
            this.f13462k = false;
        }
        if (i2 >= 2 && bArr2[i2 - 2] == 66) {
            Log.d("CAN", "开始升级 2");
            d.j(2, 1);
        }
        int i3 = this.f13454c;
        if (i3 >= 2 && this.f13452a[i3 - 2] == 82) {
            int i4 = this.f13455d;
            if (i4 >= 1) {
                int i5 = i4 - 2;
                int i6 = i5 + 1;
                if (i6 * 136 <= this.f13459h) {
                    System.arraycopy(this.f13458g, i5 * 136, this.f13457f, 0, 136);
                    if (i6 == this.f13459h / 136) {
                        this.f13461j = true;
                    }
                    X2(this.f13457f);
                    Log.d("CAN", "升级中  " + i6 + "/" + (this.f13459h / 136));
                    d.j(2, 2);
                    d.j(1, 100);
                    d.j(0, (i6 * 100) / (this.f13459h / 136));
                }
            }
            this.f13454c = 0;
            return;
        }
        int i7 = this.f13455d;
        if (i7 >= 1) {
            int i8 = i7 + 1;
            this.f13455d = i8;
            int i9 = i8 - 2;
            int i10 = i9 + 1;
            if (i10 * 136 <= this.f13459h) {
                System.arraycopy(this.f13458g, i9 * 136, this.f13457f, 0, 136);
                if (i10 == this.f13459h / 136) {
                    this.f13461j = true;
                }
                X2(this.f13457f);
                Log.d("CAN", "升级中  " + i10 + "/" + (this.f13459h / 136));
                d.j(2, 2);
                d.j(1, 100);
                d.j(0, (i10 * 100) / (this.f13459h / 136));
            }
        }
        this.f13454c = 0;
    }
}
