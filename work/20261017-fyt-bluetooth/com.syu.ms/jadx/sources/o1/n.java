package o1;

import android.util.Log;
import com.syu.jni.JniI2c;
import com.syu.jni.JniSerial;

/* JADX INFO: loaded from: classes2.dex */
public class n implements p1.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f16950a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f16951b;

    @Override // p1.a
    public int a() {
        if (s0.t(this.f16951b)) {
            throw new IllegalArgumentException("I2c error: dev path is NULL!!");
        }
        return f(this.f16951b);
    }

    @Override // p1.a
    public void b(String str) {
        this.f16951b = str;
    }

    @Override // p1.a
    public int c() {
        return this.f16950a;
    }

    @Override // p1.a
    public void close() {
        int i2 = this.f16950a;
        if (i2 > 0) {
            JniSerial.close(i2);
            this.f16950a = -1;
        }
    }

    @Override // p1.a
    public synchronized int d(int i2, int[] iArr, int... iArr2) {
        int iWriteNormal;
        int length = iArr.length;
        byte[] bArr = new byte[length];
        for (int i3 = 0; i3 < iArr.length; i3++) {
            bArr[i3] = (byte) (iArr[i3] & 255);
        }
        int length2 = iArr2.length;
        byte[] bArr2 = new byte[length2];
        for (int i4 = 0; i4 < iArr2.length; i4++) {
            bArr2[i4] = (byte) (iArr2[i4] & 255);
        }
        iWriteNormal = JniI2c.writeNormal(this.f16950a, i2, bArr, length, bArr2, length2);
        if (iWriteNormal < 0) {
            Log.e("i2cW", this.f16951b + " I2C Error:  write regs: " + b0.d(bArr, 0, length) + "  " + b0.d(bArr2, 0, length2) + " result:" + iWriteNormal);
        }
        return iWriteNormal;
    }

    @Override // p1.a
    public synchronized int[] e(int i2, int i3, boolean z2, int... iArr) {
        if (iArr != null) {
            if (iArr.length > 0) {
                if (this.f16950a <= 0) {
                    return new int[]{-1};
                }
                int length = iArr.length;
                byte[] bArr = new byte[length];
                for (int i4 = 0; i4 < iArr.length; i4++) {
                    bArr[i4] = (byte) (iArr[i4] & 255);
                }
                byte[] bArr2 = new byte[i2];
                int normalStopHave = z2 ? JniI2c.readNormalStopHave(this.f16950a, i3, bArr, length, bArr2, i2) : JniI2c.readNormalStopNo(this.f16950a, i3, bArr, length, bArr2, i2);
                if (normalStopHave < 0) {
                    Log.e("i2cW", "  read regs: " + b0.d(bArr, 0, length) + "  readlen:" + i2 + " result:" + normalStopHave + " read Data: " + b0.d(bArr2, 0, i2));
                }
                int[] iArrA = s0.a(i2);
                for (int i5 = 0; i5 < iArrA.length; i5++) {
                    iArrA[i5] = normalStopHave < 0 ? (byte) -1 : bArr2[i5];
                }
                return iArrA;
            }
        }
        throw new RuntimeException("I2c Read RegAddr Can't be NULL!!");
    }

    public int f(String str) {
        int i2 = this.f16950a;
        if (i2 > 0) {
            JniSerial.close(i2);
        }
        this.f16951b = str;
        this.f16950a = JniI2c.open(str);
        Log.e("I2c", "open I2c Device Path:" + this.f16951b + " result: " + this.f16950a + " i2c: " + this);
        return this.f16950a;
    }

    public int g(int i2, int i3) {
        int[] iArrE = e(1, i2, false, i3);
        if (iArrE == null || iArrE.length == 0) {
            return -1;
        }
        return iArrE[0] & 255;
    }

    @Override // p1.a
    public String getPath() {
        return this.f16951b;
    }

    public synchronized int h(int i2, int i3, int i4) {
        return d(i2, new int[]{i3}, i4);
    }
}
