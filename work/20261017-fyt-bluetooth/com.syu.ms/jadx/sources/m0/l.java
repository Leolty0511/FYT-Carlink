package m0;

import java.io.FileInputStream;
import java.io.InputStream;

/* JADX INFO: loaded from: classes2.dex */
public class l extends m0.a implements o1.q {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public byte[] f13284g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13285h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f13278a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f13279b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13280c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13281d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13282e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f13283f = new byte[136];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Runnable f13286i = new a();

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f13287a = {90, -91, 2, -32, 0, 0, -31};

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public byte[] f13288b = {-86, 85, 2, -32, 0, 0, -31};

        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (l.this.f13281d != 0) {
                d.i(this);
                return;
            }
            l.Q2(l.this);
            if (l.this.f13282e == 4) {
                l.this.f13282e = 0;
                l.this.S2();
            } else {
                a.f.p().s("请求进入CAN盒自身的升级模式");
                d.m(this.f13287a);
                d.m(this.f13288b);
            }
        }
    }

    public static /* synthetic */ int Q2(l lVar) {
        int i2 = lVar.f13282e;
        lVar.f13282e = i2 + 1;
        return i2;
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        if (this.f13281d == 0) {
            d.i(this.f13286i);
        }
        this.f13281d = -1;
        this.f13284g = null;
        b.f13172e = 0;
    }

    public final void S2() {
        a.f.p().s("UI请求进入can升级模式");
        d.f();
    }

    /* JADX WARN: Code duplicated, block: B:64:0x009f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        Throwable th;
        FileInputStream fileInputStream;
        Exception e2;
        if (i2 != 0) {
            return;
        }
        a.f.p().s("位置 = " + strArr[0]);
        if (strArr.length <= 0) {
            return;
        }
        InputStream inputStream = null;
        try {
            try {
                fileInputStream = new FileInputStream(strArr[0]);
                try {
                    int iAvailable = fileInputStream.available();
                    if (iAvailable != 0 && iAvailable % 136 == 0) {
                        if (iAvailable > 2097152) {
                            d.j(2, 6);
                            try {
                                fileInputStream.close();
                                return;
                            } catch (Exception e3) {
                                e3.printStackTrace();
                                return;
                            }
                        }
                        this.f13285h = iAvailable;
                        byte[] bArr = new byte[iAvailable];
                        this.f13284g = bArr;
                        fileInputStream.read(bArr);
                        try {
                            fileInputStream.close();
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                        b.f13172e = 1;
                        S2();
                        this.f13282e = 0;
                        this.f13281d = 0;
                        d.b(this.f13286i);
                        return;
                    }
                    d.j(2, 5);
                    try {
                        fileInputStream.close();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                } catch (Exception e6) {
                    e2 = e6;
                    e2.printStackTrace();
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
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13280c + bArr.length > 1024) {
            this.f13280c = 0;
        }
        System.arraycopy(bArr, 0, this.f13278a, this.f13280c, bArr.length);
        int length = this.f13280c + bArr.length;
        this.f13280c = length;
        byte[] bArr2 = this.f13278a;
        byte b2 = bArr2[length - 1];
        if (b2 == 69) {
            if (length >= 2 && bArr2[length - 2] == 82) {
                d.j(2, 4);
            }
            if (this.f13281d >= 1) {
                d.j(2, 3);
            }
            this.f13280c = 0;
            b.f13172e = 0;
            return;
        }
        if (b2 != 83) {
            if (b2 != 85) {
                return;
            }
            if (this.f13281d == 0) {
                this.f13281d = 1;
                d.m(new byte[]{90, -91, 2, -32, 0, 0, -31});
                d.m(new byte[]{-86, 85, 2, -32, 0, 0, -31});
                d.m(new byte[]{25, 120, 2, 23});
                d.j(2, 1);
            }
            this.f13280c = 0;
            return;
        }
        if (length >= 2 && bArr2[length - 2] == 66) {
            d.j(2, 1);
        }
        int i2 = this.f13281d;
        if (i2 >= 1) {
            int i3 = i2 + 1;
            this.f13281d = i3;
            int i4 = i3 - 2;
            int i5 = i4 + 1;
            if (i5 * 136 <= this.f13285h) {
                System.arraycopy(this.f13284g, i4 * 136, this.f13283f, 0, 136);
                d.m(this.f13283f);
                d.j(2, 2);
                d.j(1, 100);
                d.j(0, (i5 * 100) / (this.f13285h / 136));
            }
        }
        this.f13280c = 0;
    }
}
