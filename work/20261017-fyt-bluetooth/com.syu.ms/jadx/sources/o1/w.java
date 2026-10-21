package o1;

/* JADX INFO: loaded from: classes2.dex */
public class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16994a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int[] f16995b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16996c;

    public w(int i2) {
        if (i2 <= 0) {
            i2 = 16;
        } else if (i2 > 1024) {
            i2 = 1024;
        }
        this.f16994a = i2;
        this.f16995b = new int[i2];
    }

    public int[] a() {
        return this.f16995b;
    }

    public synchronized int b(int i2) {
        int i3 = this.f16996c;
        if (i3 == 0) {
            return i2;
        }
        return this.f16995b[i3 - 1];
    }

    public synchronized int c(int i2) {
        int i3 = this.f16996c;
        if (i3 == 0) {
            return i2;
        }
        int[] iArr = this.f16995b;
        int i4 = i3 - 1;
        this.f16996c = i4;
        return iArr[i4];
    }

    public synchronized void d(int i2) {
        int i3 = 0;
        while (true) {
            int i4 = this.f16996c;
            if (i3 >= i4) {
                break;
            }
            int[] iArr = this.f16995b;
            if (iArr[i3] == i2) {
                int i5 = i3 + 1;
                System.arraycopy(iArr, i5, iArr, i3, i4 - i5);
                this.f16996c--;
                break;
            }
            i3++;
        }
        int i6 = this.f16996c;
        int i7 = this.f16994a;
        if (i6 == i7) {
            int[] iArr2 = this.f16995b;
            System.arraycopy(iArr2, 1, iArr2, 0, i7 - 1);
            this.f16995b[this.f16994a - 1] = i2;
        } else {
            int[] iArr3 = this.f16995b;
            this.f16996c = i6 + 1;
            iArr3[i6] = i2;
        }
    }

    public int e() {
        return this.f16996c;
    }
}
