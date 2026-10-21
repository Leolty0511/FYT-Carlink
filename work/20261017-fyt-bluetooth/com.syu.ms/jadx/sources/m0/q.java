package m0;

import android.content.pm.PackageManager;
import android.opengl.GLES10;
import android.util.Log;
import java.io.FileInputStream;

/* JADX INFO: loaded from: classes2.dex */
public class q extends m0.a implements o1.q {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public byte[] f13374k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13375l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f13364a = new byte[1024];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f13365b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13366c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13367d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13368e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13369f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13370g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13371h = 128;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f13372i = new byte[128];

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f13373j = new byte[64];

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13376m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13377n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f13378o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f13379p = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.d("CAN", "requestCanCnt=" + q.this.f13377n + " reSendConut =" + q.this.f13378o + " mUpgradeStep=" + q.this.f13369f);
            if (q.this.f13369f == 0) {
                q.P2(q.this);
                if (q.this.f13377n == 3) {
                    q.S2(q.this);
                    if (q.this.f13378o < 3) {
                        System.arraycopy(q.this.f13374k, GLES10.GL_EXP2, q.this.f13373j, 0, 64);
                        q qVar = q.this;
                        qVar.g3(227, qVar.f13373j);
                    } else {
                        d.j(2, 4);
                        q.this.f13378o = 0;
                        q.this.f13369f = -1;
                        q.e3(227, 231, 1, 1);
                        d.i(this);
                    }
                    q.this.f13377n = 0;
                    return;
                }
                return;
            }
            if (q.this.f13369f == 1) {
                q.P2(q.this);
                if (q.this.f13377n == 3) {
                    q.S2(q.this);
                    if (q.this.f13378o < 3) {
                        Log.d("CAN", "resend 0xe4");
                        q.e3(227, 228, 1, 1);
                    } else {
                        d.j(2, 4);
                        q.this.f13378o = 0;
                        q.this.f13369f = -1;
                        q.e3(227, 231, 1, 1);
                        d.i(this);
                    }
                    q.this.f13377n = 0;
                    return;
                }
                return;
            }
            if (q.this.f13369f == 2) {
                q.P2(q.this);
                if (q.this.f13377n == 3) {
                    q.S2(q.this);
                    if (q.this.f13378o < 3) {
                        Log.d("CAN", "resend 0xe5");
                        q.e3(227, 229, 4, ((q.this.f13375l - 1) >> 24) & 255, ((q.this.f13375l - 1) >> 16) & 255, ((q.this.f13375l - 1) >> 8) & 255, (q.this.f13375l - 1) & 255);
                    } else {
                        d.j(2, 4);
                        q.this.f13378o = 0;
                        q.this.f13369f = -1;
                        d.i(this);
                    }
                    q.this.f13377n = 0;
                    return;
                }
                return;
            }
            if (q.this.f13369f == 3) {
                q.P2(q.this);
                if (q.this.f13377n == 3) {
                    q.S2(q.this);
                    if (q.this.f13378o < 3) {
                        System.arraycopy(q.this.f13374k, 1, q.this.f13372i, 0, 128);
                        q qVar2 = q.this;
                        qVar2.f3(230, 0, qVar2.f13372i);
                    } else {
                        d.j(2, 4);
                        q.this.f13378o = 0;
                        q.this.f13369f = -1;
                        d.i(this);
                    }
                    q.this.f13377n = 0;
                    return;
                }
                return;
            }
            if (q.this.f13369f == 4) {
                q.P2(q.this);
                if (q.this.f13377n == 3) {
                    q.S2(q.this);
                    if (q.this.f13378o < 3) {
                        System.arraycopy(q.this.f13374k, q.this.f13370g + 1, q.this.f13372i, 0, 128);
                        q qVar3 = q.this;
                        qVar3.f3(230, qVar3.f13370g, q.this.f13372i);
                    } else {
                        d.j(2, 4);
                        q.this.f13378o = 0;
                        q.this.f13369f = -1;
                        d.i(this);
                    }
                    q.this.f13377n = 0;
                }
            }
        }
    }

    public static /* synthetic */ int P2(q qVar) {
        int i2 = qVar.f13377n;
        qVar.f13377n = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int S2(q qVar) {
        int i2 = qVar.f13378o;
        qVar.f13378o = i2 + 1;
        return i2;
    }

    public static void e3(int... iArr) {
        byte[] bArrB = z.k.b(iArr);
        if (bArrB != null) {
            z.a.f18151b.i(bArrB);
        }
    }

    @Override // m0.a
    public void K2() {
        d.j(0, 0);
        d.j(1, 0);
        d.j(2, 1);
    }

    @Override // m0.a
    public void L2() {
        d.i(this.f13379p);
        this.f13369f = -1;
        this.f13374k = null;
        b.f13172e = 0;
    }

    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        int i3;
        if (i2 != 0) {
            return;
        }
        Log.d("CAN", "C_UP_FILE_PATH");
        c3();
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(strArr[0]);
                try {
                    int iAvailable = fileInputStream2.available();
                    Log.d("CAN", "size = " + iAvailable);
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
                        a.f.p().s("to large");
                        d.j(2, 6);
                        try {
                            fileInputStream2.close();
                            return;
                        } catch (Exception e3) {
                            e3.printStackTrace();
                            return;
                        }
                    }
                    Log.d("CAN", "size = " + iAvailable);
                    a.f.p().s("size = " + iAvailable);
                    int i4 = iAvailable + (-1);
                    if (i4 % 1024 == 0) {
                        this.f13375l = (i4 / 1024) * 1024;
                    } else {
                        this.f13375l = ((i4 / 1024) + 1) * 1024;
                    }
                    int i5 = this.f13375l + 1;
                    this.f13375l = i5;
                    byte[] bArr = new byte[i5];
                    this.f13374k = bArr;
                    fileInputStream2.read(bArr);
                    int i6 = iAvailable;
                    while (true) {
                        i3 = this.f13375l;
                        if (i6 >= i3) {
                            break;
                        }
                        this.f13374k[i6] = -1;
                        i6++;
                    }
                    this.f13376m = (i3 - 1) / 128;
                    Log.d("CAN", "mBufferSize=" + this.f13375l + " mBlockConut =" + this.f13376m);
                    byte b2 = (byte) (this.f13374k[0] & 255);
                    byte b3 = (byte) 0;
                    for (int i7 = 1; i7 < iAvailable; i7++) {
                        b3 = (byte) (b3 + this.f13374k[i7]);
                    }
                    byte b4 = (byte) (b3 ^ 255);
                    Log.d("CAN", "mChecksum = " + (b4 & 255) + " checksum=" + (b2 & 255));
                    if (b4 != b2) {
                        d.j(2, 7);
                        try {
                            fileInputStream2.close();
                            return;
                        } catch (Exception e4) {
                            e4.printStackTrace();
                            return;
                        }
                    }
                    System.arraycopy(this.f13374k, GLES10.GL_EXP2, this.f13373j, 0, 64);
                    g3(227, this.f13373j);
                    Log.d("CAN", "mUpgradeStep = " + this.f13369f);
                    this.f13369f = 0;
                    byte[] bArr2 = this.f13373j;
                    o1.b0.g("CAN", bArr2, 0, bArr2.length);
                    Log.d("CAN", "AAmUpgradeStep = " + this.f13369f);
                    try {
                        fileInputStream2.close();
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    a.f.p().s("requestUpdate");
                    b.f13172e = 1;
                    c3();
                    a.i.a0(100L);
                    this.f13370g = 0;
                    this.f13377n = 0;
                    d.b(this.f13379p);
                } catch (Exception e6) {
                    e = e6;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    Log.d("CAN", e.getMessage());
                    a.f.p().s("读取文件失败");
                    d.j(2, 4);
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e7) {
                            e7.printStackTrace();
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        try {
                            fileInputStream.close();
                        } catch (Exception e8) {
                            e8.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e9) {
                e = e9;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // o1.q
    public void b(byte[] bArr) {
        int i2;
        int i3;
        int i4;
        if (bArr == null || bArr.length <= 0) {
            a.i.a0(100L);
            return;
        }
        if (this.f13366c + bArr.length > 1024) {
            this.f13366c = 0;
            this.f13367d = 0;
            this.f13368e = 0;
        }
        System.arraycopy(bArr, 0, this.f13364a, this.f13366c, bArr.length);
        int length = this.f13366c + bArr.length;
        this.f13366c = length;
        int i5 = this.f13368e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13364a[2];
            int i6 = 3;
            while (true) {
                i4 = this.f13368e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 ^ this.f13364a[i6]);
                i6++;
            }
            byte[] bArr2 = this.f13364a;
            if (b2 == bArr2[i4]) {
                d3(bArr2, 4, i4 - 4);
                this.f13367d = this.f13368e + 1;
            } else {
                this.f13367d = 2;
            }
            this.f13368e = 0;
        }
        int i7 = this.f13366c - 3;
        while (true) {
            i2 = this.f13367d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13364a;
            if (bArr3[i2] == -120 && bArr3[i2 + 1] == 85) {
                int i8 = ((bArr3[i2 + 2] << 8) & 65280) | (bArr3[i2 + 3] & 255);
                this.f13368e = i8;
                if (i8 > 512) {
                    this.f13368e = 0;
                } else {
                    int i9 = i8 + i2 + 4;
                    this.f13368e = i9;
                    if (i9 >= this.f13366c) {
                        this.f13368e = i9 - i2;
                        break;
                    }
                    byte b3 = bArr3[i2 + 2];
                    int i10 = i2 + 3;
                    while (true) {
                        i3 = this.f13368e;
                        if (i10 >= i3) {
                            break;
                        }
                        b3 = (byte) (b3 ^ this.f13364a[i10]);
                        i10++;
                    }
                    byte[] bArr4 = this.f13364a;
                    if (b3 == bArr4[i3]) {
                        int i11 = this.f13367d;
                        d3(bArr4, i11 + 4, (i3 - i11) - 4);
                        this.f13367d = this.f13368e;
                    } else {
                        this.f13367d++;
                    }
                    this.f13368e = 0;
                }
            }
            this.f13367d++;
        }
        if (i2 != 0) {
            int i12 = this.f13366c - i2;
            this.f13366c = i12;
            if (i12 != 0) {
                byte[] bArr5 = this.f13364a;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13367d = 0;
        }
    }

    public final void c3() {
        Log.d("CAN", "REQUEST MCU TO CANBUS UPDATE");
        a.f.p().s("REQUEST MCU TO CANBUS UPDATE");
    }

    public void d3(byte[] bArr, int i2, int i3) {
        switch (bArr[i2 + 1]) {
            case -29:
                this.f13377n = 0;
                if ((bArr[i2 + 3] & 255) != 241) {
                    System.arraycopy(this.f13374k, GLES10.GL_EXP2, this.f13373j, 0, 64);
                    g3(227, this.f13373j);
                } else {
                    this.f13369f = 1;
                    this.f13378o = 0;
                    e3(227, 228, 1, 1);
                }
                break;
            case -28:
                this.f13377n = 0;
                if ((bArr[i2 + 3] & 255) != 241) {
                    e3(227, 228, 1, 1);
                } else {
                    this.f13369f = 2;
                    this.f13378o = 0;
                    d.j(2, 1);
                    int i4 = this.f13375l;
                    e3(227, 229, 4, ((i4 - 1) >> 24) & 255, ((i4 - 1) >> 16) & 255, ((i4 - 1) >> 8) & 255, (i4 - 1) & 255);
                    d.j(2, 2);
                    d.j(1, 100);
                    d.j(0, 0);
                }
                break;
            case -27:
                this.f13377n = 0;
                if ((bArr[i2 + 3] & 255) != 241) {
                    int i5 = this.f13375l;
                    e3(227, 229, 4, ((i5 - 1) >> 24) & 255, ((i5 - 1) >> 16) & 255, ((i5 - 1) >> 8) & 255, (i5 - 1) & 255);
                } else {
                    this.f13369f = 3;
                    this.f13378o = 0;
                    System.arraycopy(this.f13374k, 1, this.f13372i, 0, 128);
                    f3(230, 0, this.f13372i);
                    d.j(1, 100);
                    d.j(0, 100 / this.f13376m);
                }
                break;
            case -26:
                this.f13377n = 0;
                this.f13369f = 4;
                this.f13378o = 0;
                int i6 = (((bArr[i2 + 3] * 255) << 24) | ((bArr[i2 + 4] & 255) << 16) | ((bArr[i2 + 5] & 255) << 8) | (bArr[i2 + 6] & 255)) & 16777215;
                this.f13370g = i6;
                if (i6 < this.f13375l - 1) {
                    System.arraycopy(this.f13374k, i6 + 1, this.f13372i, 0, 128);
                    f3(230, this.f13370g, this.f13372i);
                    int i7 = this.f13375l;
                    int i8 = this.f13370g;
                    if (i7 - i8 > 128) {
                        d.j(0, (i8 * 100) / i7);
                    } else {
                        d.j(0, (i7 * 100) / (i7 - 1));
                        d.j(2, 3);
                    }
                }
                break;
            case PackageManager.INSTALL_FAILED_VERSION_DOWNGRADE /* -25 */:
                e3(227, 231, 1, 1);
                a.i.a0(500L);
                d.i(this.f13379p);
                d.j(0, 100);
                d.j(2, 3);
                this.f13369f = -1;
                this.f13378o = 0;
                this.f13370g = 0;
                break;
        }
    }

    public final void f3(int i2, int i3, byte[] bArr) {
        int[] iArr = new int[bArr.length + 3 + 4];
        iArr[0] = -29;
        iArr[1] = (byte) i2;
        iArr[2] = ((byte) bArr.length) + 4;
        iArr[3] = (i3 >> 24) & 255;
        iArr[4] = (i3 >> 16) & 255;
        iArr[5] = (i3 >> 8) & 255;
        iArr[6] = i3 & 255;
        int length = bArr.length;
        for (int i4 = 0; i4 < length; i4++) {
            iArr[7 + i4] = bArr[i4];
        }
        e3(iArr);
    }

    public final void g3(int i2, byte[] bArr) {
        int[] iArr = new int[bArr.length + 3];
        iArr[0] = -29;
        iArr[1] = (byte) i2;
        iArr[2] = (byte) bArr.length;
        int length = bArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            iArr[3 + i3] = bArr[i3];
        }
        e3(iArr);
    }
}
