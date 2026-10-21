package m0;

import android.util.Log;
import java.io.FileInputStream;
import o1.e0;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class n extends m0.a implements o1.q {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public byte[] f13312e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13313f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f13308a = true;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f13309b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13310c = 128;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f13311d = new byte[128 + 2];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13314g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f13315h = new byte[1024];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f13316i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f13317j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f13318k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f13319l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f13320m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f13321n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Runnable f13322o = new a();

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (n.this.f13309b != 0) {
                d.i(this);
            } else {
                n nVar = n.this;
                nVar.S2(225, 2, (nVar.f13314g >> 8) & 255, n.this.f13314g & 255);
            }
        }
    }

    @Override // m0.a
    public void K2() {
    }

    @Override // m0.a
    public void L2() {
        this.f13309b = -1;
        this.f13312e = null;
        b.f13172e = 0;
    }

    public final void P2() {
        e0 e0Var = z.a.f18151b;
        e0Var.i(z.k.b(1, 86, 170));
        e0Var.i(z.k.b(1, 86, 85));
    }

    public void Q2(byte[] bArr, int i2, int i3) {
        Log.d("SOUL", "SOUL :" + o1.b0.d(bArr, i2, i3));
        a.f.p().t(LogType.CANBUS, "OBD Update Rcv1111--> " + o1.b0.d(bArr, i2, i3));
        byte b2 = bArr[i2];
        if (b2 == -30) {
            R2(bArr, i2, i3 - 1);
        } else {
            if (b2 != -28) {
                return;
            }
            R2(bArr, i2, i3);
        }
    }

    public final void R2(byte[] bArr, int i2, int i3) {
        Log.d("SOUL", "data[start] =" + (bArr[i2] & 255) + "  updateCanUpInfo :" + o1.b0.d(bArr, i2, i3));
        StringBuilder sb = new StringBuilder();
        sb.append("mUpgradeStep 1111==  :");
        sb.append(this.f13309b);
        Log.d("SOUL", sb.toString());
        byte b2 = bArr[i2];
        if (b2 == -30) {
            this.f13309b = 1;
            int i4 = i2 + 2;
            if (bArr[i4] == 0) {
                d.j(2, 4);
                return;
            }
            if (bArr[i4] != 1) {
                if (bArr[i4] == 2) {
                    d.j(2, 3);
                    int i5 = this.f13314g;
                    d.j(0, (i5 * 100) / i5);
                    return;
                }
                return;
            }
            d.j(2, 1);
            d.j(0, (this.f13321n * 100) / this.f13314g);
            byte[] bArr2 = this.f13311d;
            bArr2[0] = 0;
            bArr2[1] = 0;
            byte[] bArr3 = this.f13312e;
            if (bArr3 != null) {
                System.arraycopy(bArr3, this.f13321n * 128, bArr2, 2, 128);
                d.j(0, (this.f13321n * 100) / this.f13314g);
                T2(this.f13311d);
                return;
            }
            return;
        }
        if (b2 != -28) {
            return;
        }
        Log.d("SOUL", "mUpgradeStep 222222==  :" + this.f13309b);
        if (this.f13309b == 1) {
            this.f13321n = ((bArr[i2 + 3] & 255) | (((bArr[i2 + 2] & 255) << 8) & 65280)) + 1;
            if (this.f13312e != null) {
                Log.d("SOUL", "block ===  " + this.f13321n + "-------mBlockConut == " + (this.f13314g & 65535));
                int i6 = this.f13321n;
                if (((i6 + 1) & 65535) <= (this.f13314g & 65535)) {
                    byte[] bArr4 = this.f13311d;
                    bArr4[0] = (byte) ((i6 >> 8) & 255);
                    bArr4[1] = (byte) (i6 & 255);
                    System.arraycopy(this.f13312e, i6 * 128, bArr4, 2, 128);
                    d.j(0, (this.f13321n * 100) / this.f13314g);
                    T2(this.f13311d);
                    return;
                }
                Log.d("SOUL", "11111111 block ===  " + this.f13321n + "-------mBlockConut == " + (this.f13314g & 65535));
                d.j(2, 3);
                Log.d("SOUL", "222222222 block ===  " + this.f13321n + "-------mBlockConut == " + (this.f13314g & 65535));
                int i7 = this.f13314g;
                d.j(0, (i7 * 100) / i7);
                Log.d("SOUL", "33333333 block ===  " + this.f13321n + "-------mBlockConut == " + (this.f13314g & 65535));
            }
        }
    }

    public void S2(int... iArr) {
        int i2;
        a.f.p().t(LogType.CANBUS, "WR OBD Update111 ---->: " + o1.b0.e(iArr, 0, iArr.length));
        Log.d("SOUL", "WR OBD Update111 :" + o1.b0.e(iArr, 0, iArr.length));
        int length = iArr.length + 2;
        int[] iArr2 = new int[length];
        iArr2[0] = 46;
        int i3 = 1;
        while (true) {
            i2 = length - 1;
            if (i3 >= i2) {
                break;
            }
            iArr2[i3] = iArr[i3 - 1];
            i3++;
        }
        iArr2[i2] = 0;
        for (int i4 : iArr) {
            iArr2[i2] = iArr2[i2] + i4;
        }
        iArr2[i2] = iArr2[i2] ^ 255;
        byte[] bArr = new byte[length];
        for (int i5 = 0; i5 < length; i5++) {
            bArr[i5] = (byte) iArr2[i5];
        }
        z.k.q(bArr);
        a.f.p().t(LogType.CANBUS, "WR OBD Update222222 ---->: " + o1.b0.d(bArr, 0, length));
        Log.d("SOUL", "WR OBD Update222222 ---->1 :" + o1.b0.d(bArr, 0, length));
    }

    public final void T2(byte[] bArr) {
        Log.d("SOUL", "data.length  ==   " + bArr.length);
        int length = bArr.length + 4;
        byte[] bArr2 = new byte[length];
        Log.d("SOUL", "cmds.length  ==   " + length);
        bArr2[0] = 46;
        int i2 = 1;
        bArr2[1] = -29;
        bArr2[2] = -126;
        Log.d("SOUL", "writeData  ==  1111111111 ");
        for (int i3 = 0; i3 < bArr.length; i3++) {
            bArr2[3 + i3] = bArr[i3];
        }
        Log.d("SOUL", "writeData  ==  2222222222 ");
        int i4 = 0;
        while (true) {
            int i5 = length - 1;
            if (i2 >= i5) {
                Log.d("SOUL", "writeData  ==  333333333 ");
                bArr2[i5] = (byte) (i4 ^ 255);
                Log.d("SOUL", "writeData  ==  4444444444 ");
                z.k.q(bArr2);
                Log.d("SOUL", "writeData  ==  5555555 ");
                a.f.p().t(LogType.CANBUS, "WR OBD Update ---->: " + o1.b0.d(bArr2, 0, length));
                return;
            }
            i4 += (byte) (bArr2[i2] & 255);
            i2++;
        }
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
                    this.f13319l = fileInputStream2.available();
                    Log.d("SOUL", "size = " + this.f13319l);
                    int i3 = this.f13319l;
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
                    a.f.p().s("size = " + this.f13319l);
                    int i4 = this.f13319l;
                    this.f13314g = i4 / 128;
                    this.f13313f = (i4 / 128) * 128;
                    Log.d("SOUL", "size = " + this.f13319l + " mBlockConut=" + this.f13314g);
                    byte[] bArr = new byte[this.f13313f];
                    this.f13312e = bArr;
                    fileInputStream2.read(bArr);
                    Log.d("SOUL", "read mBuffer = 11111111 === " + this.f13319l + " mBlockConut=" + this.f13314g);
                    int i5 = this.f13314g;
                    S2(225, 2, (i5 >> 8) & 255, i5 & 255);
                    Log.d("SOUL", "read mBuffer = 222222222 === " + this.f13319l + " mBlockConut=" + this.f13314g);
                    StringBuilder sb = new StringBuilder();
                    sb.append("mUpgradeStep = 11111111 === ");
                    sb.append(this.f13309b);
                    Log.d("SOUL", sb.toString());
                    d.j(1, 100);
                    d.j(0, 100 / this.f13314g);
                    try {
                        fileInputStream2.close();
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                    a.f.p().s("requestUpdate");
                    b.f13172e = 0;
                    this.f13309b = 0;
                    d.b(this.f13322o);
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
        if (bArr != null) {
            Log.d("SOUL", "OBD Update Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
            a.f.p().t(LogType.CANBUS, "OBD Update Rcv--> " + o1.b0.d(bArr, 0, bArr.length));
        } else {
            Log.d("SOUL", "data--> null1111111111111 ");
        }
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        if (this.f13316i + bArr.length > 1024) {
            this.f13316i = 0;
            this.f13317j = 0;
            this.f13318k = 0;
        }
        System.arraycopy(bArr, 0, this.f13315h, this.f13316i, bArr.length);
        int length = this.f13316i + bArr.length;
        this.f13316i = length;
        int i5 = this.f13318k;
        if (i5 != 0) {
            if (i5 >= length) {
                return;
            }
            byte b2 = this.f13315h[1];
            int i6 = 2;
            while (true) {
                i4 = this.f13318k;
                if (i6 >= i4) {
                    break;
                }
                b2 = (byte) (b2 + this.f13315h[i6]);
                i6++;
            }
            byte b3 = (byte) (~b2);
            byte[] bArr2 = this.f13315h;
            if (b3 == bArr2[i4]) {
                Q2(bArr2, 1, i4 - 1);
                this.f13317j = this.f13318k + 1;
            } else {
                this.f13317j = 1;
            }
            this.f13318k = 0;
        }
        int i7 = this.f13316i - 2;
        while (true) {
            i2 = this.f13317j;
            if (i2 >= i7) {
                break;
            }
            byte[] bArr3 = this.f13315h;
            if (bArr3[i2] == 46) {
                int i8 = bArr3[i2 + 2] & 255;
                this.f13318k = i8;
                if (i8 > 512) {
                    this.f13318k = 0;
                } else {
                    int i9 = i8 + i2 + 3;
                    this.f13318k = i9;
                    if (i9 >= this.f13316i) {
                        this.f13318k = i9 - i2;
                        break;
                    }
                    byte b4 = bArr3[i2 + 1];
                    int i10 = i2 + 2;
                    while (true) {
                        i3 = this.f13318k;
                        if (i10 >= i3) {
                            break;
                        }
                        b4 = (byte) (b4 + this.f13315h[i10]);
                        i10++;
                    }
                    byte b5 = (byte) (~b4);
                    byte[] bArr4 = this.f13315h;
                    if (b5 == bArr4[i3]) {
                        int i11 = this.f13317j;
                        Q2(bArr4, i11 + 1, (i3 - i11) - 1);
                        this.f13317j = this.f13318k;
                    } else {
                        this.f13317j++;
                    }
                    this.f13318k = 0;
                }
            }
            this.f13317j++;
        }
        if (i2 != 0) {
            int i12 = this.f13316i - i2;
            this.f13316i = i12;
            if (i12 > 0) {
                byte[] bArr5 = this.f13315h;
                System.arraycopy(bArr5, i2, bArr5, 0, i12);
            }
            this.f13317j = 0;
        }
    }
}
