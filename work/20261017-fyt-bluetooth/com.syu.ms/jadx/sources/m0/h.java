package m0;

import android.util.Log;
import java.io.FileInputStream;
import o1.e0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class h extends m0.a implements o1.q {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public byte[] f13226j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13227k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13217a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f13218b = new byte[1024];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13219c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13220d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13221e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13222f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13223g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13224h = 256;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public byte[] f13225i = new byte[256 + 5];

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13228l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13229m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13230n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f13231o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public Runnable f13232p = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Log.d("SOUL", "mUpgradeStep =" + h.this.f13222f);
            if (h.this.f13222f != 0) {
                d.i(this);
            } else {
                h.this.S2(18, 5, 85, 170, 83, 84, 65);
                h.this.f13223g = 0;
            }
        }
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        this.f13222f = -1;
        this.f13226j = null;
        b.f13172e = 0;
    }

    public final void P2() {
        e0 e0Var = z.a.f18151b;
        e0Var.i(z.k.b(1, 86, 170));
        e0Var.i(z.k.b(1, 86, 85));
    }

    public void Q2(byte[] bArr, int i2, int i3) {
        Log.d("SOUL", "SOUL :" + o1.b0.d(bArr, i2, i3));
        byte b2 = bArr[i2];
        if (b2 == 18) {
            R2(bArr, i2, i3 - 1);
        } else {
            if (b2 != 33) {
                return;
            }
            this.f13222f = 1;
            R2(bArr, i2, i3 - 1);
        }
    }

    public final void R2(byte[] bArr, int i2, int i3) {
        Log.d("SOUL", "data[start] =" + (bArr[i2] & 255) + "updateCanUpInfo :" + o1.b0.d(bArr, i2, i3));
        if (bArr[i2] != 33) {
            return;
        }
        int i4 = i2 + 2;
        if (bArr[i4] != 0) {
            d.j(2, 4);
            return;
        }
        if (bArr[i4] == 0) {
            d.j(2, 1);
            Log.d("SOUL", "mSendAddr  =" + this.f13223g + " ---- mBlockConut :" + this.f13228l);
            int i5 = this.f13223g;
            int i6 = this.f13228l;
            if (i5 == i6 + 1) {
                S2(18, 5, 85, 170, 69, 78, 68);
                d.j(2, 3);
                this.f13223g++;
                return;
            }
            if (i5 != i6) {
                if (i5 < i6) {
                    System.arraycopy(this.f13226j, i5 * 261, this.f13225i, 0, 261);
                    d.j(0, (this.f13223g * 100) / this.f13228l);
                    T2(this.f13225i);
                    this.f13223g++;
                    return;
                }
                return;
            }
            byte[] bArr2 = new byte[this.f13229m - (i5 * 261)];
            Log.d("SOUL", "lastdata  =  " + (this.f13229m - (this.f13223g * 261)));
            byte[] bArr3 = this.f13226j;
            int i7 = this.f13223g;
            System.arraycopy(bArr3, i7 * 261, bArr2, 0, this.f13229m - (i7 * 261));
            T2(bArr2);
            this.f13223g++;
        }
    }

    public void S2(int... iArr) {
        int i2;
        int length = iArr.length + 3;
        int[] iArr2 = new int[length];
        iArr2[0] = 233;
        iArr2[1] = 152;
        int i3 = 2;
        while (true) {
            i2 = length - 1;
            if (i3 >= i2) {
                break;
            }
            iArr2[i3] = iArr[i3 - 2];
            i3++;
        }
        iArr2[i2] = 0;
        for (int i4 : iArr) {
            iArr2[i2] = iArr2[i2] + i4;
        }
        iArr2[i2] = iArr2[i2] ^ 255;
        l0.a aVar = l0.z.f13137a;
        l0.a.d(iArr2);
        a.f.p().t(LogType.CANBUS, "WR Update ---->: " + o1.b0.e(iArr2, 1, i2));
    }

    public final void T2(byte[] bArr) {
        int length = bArr.length + 1;
        int[] iArr = new int[length];
        int i2 = 0;
        iArr[0] = -23;
        int length2 = bArr.length;
        while (i2 < length2) {
            int i3 = 1 + i2;
            iArr[i3] = bArr[i2];
            i2 = i3;
        }
        l0.a aVar = l0.z.f13137a;
        l0.a.d(iArr);
        a.f.p().t(LogType.CANBUS, "WR Update ---->: " + o1.b0.e(iArr, 1, length - 1));
    }

    @Override // m0.a, y.c
    public void Z0(int i2, int[] iArr, float[] fArr, String[] strArr) throws Throwable {
        if (i2 != 0) {
            return;
        }
        Log.d("SOUL", "C_UP_FILE_PATH");
        P2();
        if (strArr == null || strArr.length <= 0) {
            return;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(strArr[0]);
                try {
                    this.f13229m = fileInputStream2.available();
                    Log.d("SOUL", "size = " + this.f13229m);
                    int i3 = this.f13229m;
                    if (i3 == 0) {
                        Log.d("SOUL", "size == 0 or not 136*n");
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
                    if (i3 > 2097152) {
                        Log.d("SOUL", "to large");
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
                    a.f.p().s("size = " + this.f13229m);
                    int i4 = this.f13229m / 261;
                    this.f13228l = i4;
                    this.f13227k = (i4 + 1) * 261;
                    Log.d("SOUL", "size = " + this.f13229m + " mBlockConut=" + this.f13228l);
                    byte[] bArr = new byte[this.f13227k];
                    this.f13226j = bArr;
                    fileInputStream2.read(bArr);
                    S2(18, 5, 85, 170, 83, 84, 65);
                    this.f13222f = 0;
                    d.j(1, 100);
                    d.j(0, 100 / this.f13228l);
                    try {
                        fileInputStream2.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    a.f.p().s("requestUpdate");
                    b.f13172e = 0;
                    this.f13222f = 0;
                    d.b(this.f13232p);
                    a.i.a0(1500L);
                } catch (Exception e5) {
                    e = e5;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    Log.d("CAN", e.getMessage());
                    a.f.p().s("读取文件失败");
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
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e8) {
            e = e8;
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
        if (this.f13219c + bArr.length > 1024) {
            this.f13219c = 0;
            this.f13220d = 0;
            this.f13221e = 0;
        }
        System.arraycopy(bArr, 0, this.f13218b, this.f13219c, bArr.length);
        int length = this.f13219c + bArr.length;
        this.f13219c = length;
        int i5 = this.f13221e;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13218b[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13221e;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13218b[i6]);
                i6++;
            }
            byte b3 = (byte) (~b2);
            byte[] bArr2 = this.f13218b;
            if (b3 == bArr2[i4]) {
                Q2(bArr2, 1, i4 - 1);
                this.f13220d = this.f13221e + 1;
            } else {
                this.f13220d = 1;
            }
            this.f13221e = 0;
        }
        int i7 = this.f13219c - 2;
        while (true) {
            i2 = this.f13220d;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13218b;
            if (bArr3[i2] == -104) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f13221e = i8;
                if (i8 > 512) {
                    this.f13221e = 0;
                } else {
                    int i9 = i8 + i2 + 3;
                    this.f13221e = i9;
                    if (i9 >= this.f13219c) {
                        this.f13221e = i9 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f13221e;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13218b[i10]);
                        i10++;
                    }
                    byte b5 = (byte) (~b4);
                    byte[] bArr4 = this.f13218b;
                    if (b5 == bArr4[i3]) {
                        int i11 = this.f13220d;
                        Q2(bArr4, i11 + 1, (i3 - i11) - 1);
                        this.f13220d = this.f13221e;
                    } else {
                        this.f13220d++;
                    }
                    this.f13221e = 0;
                }
            }
            this.f13220d++;
        }
        if (i2 != 0) {
            int i12 = this.f13219c - i2;
            this.f13219c = i12;
            if (i12 > 0) {
                byte[] bArr5 = this.f13218b;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13220d = 0;
        }
    }
}
