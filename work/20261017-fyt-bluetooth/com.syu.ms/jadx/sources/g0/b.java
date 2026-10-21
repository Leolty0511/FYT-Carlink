package g0;

import android.util.Log;
import java.util.Arrays;
import o1.n;
import o1.s0;

/* JADX INFO: loaded from: classes.dex */
public class b extends f0.a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public n f2383g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f2384h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f2385i = new Object();

    public b(n nVar) {
        this.f1853e = 1;
        this.f2383g = nVar;
    }

    @Override // f0.a
    public void a() {
        this.f2384h = false;
    }

    @Override // f0.a
    public boolean c(int i2, int[] iArr, float[] fArr, String[] strArr) {
        return false;
    }

    @Override // f0.a
    public boolean d() {
        if (!this.f2384h) {
            this.f2384h = j() == 1;
        }
        return this.f2384h;
    }

    @Override // f0.a
    public void e() {
    }

    @Override // f0.a
    public void g() {
    }

    @Override // f0.a
    public boolean h(y.b bVar, int i2) {
        return false;
    }

    public int j() {
        int iK = -1;
        for (int[] iArr : a.f2382a) {
            for (int i2 = 3; i2 > 0; i2--) {
                iK = k(iArr);
                if (iK != -1) {
                    break;
                }
                s0.C(50L);
            }
            if (iK == -1) {
                Log.e("A2bHiFi", "Error!! handle Command Line :");
                break;
            }
        }
        return iK;
    }

    public int k(int[] iArr) {
        if (iArr == null || iArr.length < 5) {
            return -2;
        }
        Log.e("A2bHiFi", "handleCommandLine array : " + Arrays.toString(s0.s(iArr)));
        int i2 = iArr[0];
        int i3 = iArr[1];
        int i4 = iArr[2];
        int i5 = iArr[4];
        if (i3 == 87) {
            int iM = m(i2, i4, i5);
            Log.e("A2bHiFi", "handleCommandLine write result : " + iM);
            return iM;
        }
        if (i3 == 82) {
            int iL = l(i2, i4);
            Log.e("A2bHiFi", String.format("handleCommandLine read reg: %02X result: %02X", Integer.valueOf(i4), Integer.valueOf(iL)));
            if (iL >= 0 && ((i4 != 2 || iL == 173) && (i4 != 3 || iL == 40))) {
                return 1;
            }
        } else if (i3 == 68) {
            s0.C(i5);
            Log.e("A2bHiFi", "handleCommandLine delay result : 1");
            return 1;
        }
        return -1;
    }

    public final int l(int i2, int i3) {
        int iG;
        synchronized (this.f2385i) {
            iG = this.f2383g.g(i2, i3);
        }
        return iG;
    }

    public final int m(int i2, int i3, int i4) {
        int i5;
        synchronized (this.f2385i) {
            int i6 = 3;
            do {
                int iH = this.f2383g.h(i2, i3, i4);
                Log.e("A2bHiFi", "writeWithCheckResult write ret : " + iH + " data : " + i4);
                int i7 = 1;
                i5 = iH >= 0 ? 1 : -1;
                if (i5 > 0 && i2 == 107) {
                    s0.C(10L);
                    int iG = this.f2383g.g(i2, i3);
                    Log.e("A2bHiFi", "writeWithCheckResult read ret : " + iG + " data : " + i4);
                    if (iG != i4) {
                        i7 = -1;
                    }
                    i5 = i7;
                }
                i6--;
                if (i5 >= 0) {
                    break;
                }
            } while (i6 > 0);
        }
        return i5;
    }
}
