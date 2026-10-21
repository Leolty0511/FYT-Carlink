package l0;

import k0.nt;
import util.log.LogType;

/* JADX INFO: loaded from: classes2.dex */
public class d extends a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f13030c = new byte[1024];

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f13031d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f13032e = 0;

    @Override // l0.a
    public void b(byte[] bArr) {
        super.b(bArr);
        if (bArr == null || bArr.length <= 0) {
            return;
        }
        System.arraycopy(bArr, 0, this.f13030c, this.f13031d, bArr.length);
        int length = this.f13031d + bArr.length;
        this.f13031d = length;
        if (length >= 11) {
            while (true) {
                int i2 = this.f13032e;
                if (i2 >= length) {
                    break;
                }
                if (i2 + 10 <= this.f13031d) {
                    byte[] bArr2 = this.f13030c;
                    if (bArr2[i2] == 85 && bArr2[i2 + 10] == -86) {
                        nt.f8639d.U2(bArr2, i2, 11);
                    } else {
                        this.f13032e = i2 + 1;
                    }
                }
                this.f13032e++;
            }
        } else {
            this.f13032e = 0;
        }
        int i3 = this.f13032e;
        if (i3 != 0) {
            int i4 = this.f13031d - i3;
            this.f13031d = i4;
            if (i4 > 0) {
                byte[] bArr3 = this.f13030c;
                System.arraycopy(bArr3, i3, bArr3, 0, i4);
            }
            this.f13032e = 0;
        }
    }

    @Override // l0.a
    public void f(int... iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        iArr2[0] = 233;
        for (int i2 = 1; i2 < length; i2++) {
            iArr2[i2] = iArr[i2];
        }
        a.d(iArr2);
        a.f.p().t(LogType.CANBUS, "Write---->: " + o1.b0.e(iArr2, 1, length - 1));
    }
}
