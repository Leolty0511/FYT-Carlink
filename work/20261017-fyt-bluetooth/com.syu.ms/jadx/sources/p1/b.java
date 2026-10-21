package p1;

import android.util.Log;
import com.syu.jni.I2c6225VideoJni;
import o1.b0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17030a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f17031b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17032c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public I2c6225VideoJni f17033d = new I2c6225VideoJni();

    @Override // p1.a
    public int a() {
        if (s0.t(this.f17031b)) {
            throw new IllegalArgumentException("I2c error: dev path is NULL!!");
        }
        return f(this.f17031b);
    }

    @Override // p1.a
    public void b(String str) {
        this.f17031b = str;
    }

    @Override // p1.a
    public int c() {
        return this.f17030a;
    }

    @Override // p1.a
    public void close() {
        this.f17030a = -1;
    }

    @Override // p1.a
    public synchronized int d(int i2, int[] iArr, int... iArr2) {
        int i3;
        if (iArr != null) {
            if (iArr.length == 1) {
                if (iArr2 == null || iArr2.length != 1) {
                    throw new RuntimeException("I2c Write params most be 1!!");
                }
                if (this.f17030a > 0 && (i3 = this.f17032c) >= 0) {
                    byte b2 = (byte) iArr[0];
                    int i4 = iArr2[0];
                    int iLsecVideoI2cWrite = this.f17033d.lsecVideoI2cWrite(b2, (byte) i4, i3);
                    if (iLsecVideoI2cWrite < 0) {
                        Log.e("S6225I2c", "csi: " + this.f17032c + " I2C Error:  write regs: " + String.format(" %02X  %02X", Byte.valueOf(b2), Integer.valueOf(i4)) + " result:" + iLsecVideoI2cWrite);
                    }
                    return iLsecVideoI2cWrite;
                }
                return -1;
            }
        }
        throw new RuntimeException("I2c Write Reg Size most be 1!!");
    }

    @Override // p1.a
    public synchronized int[] e(int i2, int i3, boolean z2, int... iArr) {
        int i4;
        if (iArr != null) {
            if (iArr.length == 1) {
                if (this.f17030a > 0 && (i4 = this.f17032c) >= 0) {
                    byte b2 = (byte) iArr[0];
                    byte[] bArr = new byte[i2];
                    int iLsecVideoI2cRead = this.f17033d.lsecVideoI2cRead(b2, bArr, i4);
                    if (iLsecVideoI2cRead < 0) {
                        Log.e("S6225I2c", String.format("csi: " + this.f17032c + " read reg: %02X", Byte.valueOf(b2)) + "  readlen:" + i2 + " result:" + iLsecVideoI2cRead + " read Data: " + b0.d(bArr, 0, i2));
                    }
                    int[] iArrA = s0.a(i2);
                    for (int i5 = 0; i5 < iArrA.length; i5++) {
                        iArrA[i5] = iLsecVideoI2cRead < 0 ? (byte) -1 : bArr[i5];
                    }
                    return iArrA;
                }
                return new int[]{-1};
            }
        }
        throw new RuntimeException("I2c Read Reg Size most be 1!!");
    }

    public int f(String str) {
        this.f17030a = 1;
        return 1;
    }

    public void g(int i2) {
        this.f17032c = i2;
    }

    @Override // p1.a
    public String getPath() {
        return this.f17031b;
    }
}
