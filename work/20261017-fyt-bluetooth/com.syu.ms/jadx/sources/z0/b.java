package z0;

import android.util.Log;
import java.util.Arrays;
import o1.b0;
import o1.n;
import o1.q0;
import o1.s0;
import y0.f;

/* JADX INFO: loaded from: classes2.dex */
public class b extends z0.a {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f18276j = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f18277e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f18278f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int[] f18279g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Runnable f18280h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f18281i;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.b();
            b.this.c(q0.f16964m == 1);
        }
    }

    public b(n nVar, int i2) {
        super(nVar, i2);
        this.f18277e = 64;
        this.f18278f = 0;
        this.f18279g = new int[]{0, 15, 1, 208, 2, 0, 3, 200, 4, 0, 5, 0, 6, 0, 7, 1, 255, 255};
        this.f18280h = new a();
        this.f18281i = 8;
        if (h(0, 15) > 0) {
            f18276j = 2;
        }
    }

    @Override // z0.a
    public boolean a(int i2, y.b bVar) {
        if (i2 != 87) {
            return false;
        }
        int i3 = this.f18275d;
        if (i3 >= 0) {
            int[] iArr = new int[1];
            iArr[0] = i3 > 64 ? 1 : 2;
            e(bVar, i2, iArr);
        }
        return true;
    }

    @Override // z0.a
    public void b() {
        int iH;
        if (f18276j < 0) {
            return;
        }
        boolean z2 = s0.m("sys.lsec.ext_dsp", 0) == 1;
        if (z2) {
            u0.c.f17374a.d(this.f18280h);
        }
        int[] iArr = new int[15];
        int i2 = 0;
        for (int i3 = 0; i3 < 15; i3++) {
            int iG = g(23);
            if (iG > 64) {
                i2++;
            }
            iArr[i3] = iG;
            s0.C(1L);
        }
        Log.e("amp", "digitalAmp Reg17: " + Arrays.toString(iArr));
        int length = this.f18279g.length / 2;
        int i4 = -56;
        int i5 = 72;
        if (this.f18278f == 2) {
            i5 = -56;
        } else {
            i4 = 72;
        }
        if (i2 >= 15) {
            this.f18275d = 74;
        } else {
            this.f18275d = 0;
        }
        Log.e("amp", " ampType : " + this.f18275d);
        if (this.f18275d <= 64) {
            h(0, 15);
            h(1, 16);
            h(2, i4);
            iH = h(3, 1);
        } else {
            int length2 = this.f18279g.length / 2;
            int iH2 = 0;
            for (int i6 = 0; i6 < length2; i6++) {
                int[] iArr2 = this.f18279g;
                int i7 = i6 * 2;
                int i8 = iArr2[i7];
                int i9 = iArr2[i7 + 1];
                if (i8 != 255 || i9 != 255) {
                    int[] iArr3 = new int[1];
                    if (i8 == 3) {
                        i9 = i5;
                    }
                    iArr3[0] = i9;
                    iH2 = h(i8, iArr3);
                    if (iH2 < 0) {
                        break;
                    }
                }
            }
            iH = iH2;
        }
        if (iH < 0) {
            this.f18275d = -1;
        }
        Log.e("amp", "ampType : " + this.f18275d);
        if (z2) {
            u0.c.f17374a.a(this.f18280h, 0);
        }
    }

    @Override // z0.a
    public void c(boolean z2) {
        int i2;
        if (f18276j < 0 || (i2 = this.f18275d) < 0) {
            return;
        }
        int i3 = this.f18278f == 2 ? -56 : 72;
        if (i2 <= 64) {
            if (z2) {
                h(2, i3);
            } else {
                h(2, i3 | 6);
            }
        } else if (z2) {
            h(2, 0);
        } else {
            h(2, 24);
        }
        Log.e("amp", "digitalAmp ampType : " + this.f18275d + " dspType: " + this.f18278f + " hasAmp: " + f18276j + " mute: " + z2);
    }

    @Override // z0.a
    public void d() {
        if (f18276j < 0) {
            return;
        }
        if (f.f18031a == 16) {
            this.f18278f = 2;
        } else {
            this.f18278f = 0;
        }
        h(3, 200);
        h(4, 0);
        h(7, 0);
    }

    public synchronized int g(int i2) {
        return this.f18273b.g(108, i2);
    }

    public synchronized int h(int i2, int... iArr) {
        int iD;
        iD = -1;
        int i3 = 0;
        while (i3 < 8) {
            iD = this.f18273b.d(108, new int[]{i2}, iArr);
            if (iD > 0) {
                break;
            }
            i3++;
        }
        Log.e("amp", ">>>>>>>>>>  write " + String.format("%02X  ", Integer.valueOf(i2)) + b0.e(iArr, 0, iArr.length) + " result : " + iD + " reWr:" + i3);
        return iD;
    }
}
