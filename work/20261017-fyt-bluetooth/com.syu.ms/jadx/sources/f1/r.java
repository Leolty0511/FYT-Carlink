package f1;

import android.net.ProxyProperties;
import android.os.Handler;
import android.util.Log;
import android.util.SparseArray;
import o1.k0;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class r extends q {
    public final Object P;
    public final k0 Q;
    public SparseArray<a> R;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2166a = -1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2167b = 0;

        public String toString() {
            return "Signal[ntcsPal : " + this.f2166a + " mAhd:" + this.f2167b + "]";
        }
    }

    public r(int i2, int i3, p1.a aVar, int i4, Handler handler) {
        super(i2, i3, aVar, i4, handler);
        this.P = new Object();
        this.Q = new k0();
        this.R = new SparseArray<>();
    }

    public boolean X(int... iArr) {
        return iArr.length >= 2 && q(iArr);
    }

    public q.c Y(int i2) {
        return this.f2138b.get(i2, new q.c(-1, -1));
    }

    public void Z(int i2) {
        boolean z2 = true;
        if (i2 != 0 && i2 != 1) {
            z2 = false;
        }
        q.c cVarY = Y(i2);
        if (cVarY == null || !cVarY.a()) {
            return;
        }
        String str = z() + "a.di";
        s0.F(str, ProxyProperties.LOCAL_EXCL_LIST + z2);
        Log.e("Signal", "SetProperty  " + str + " = " + z2);
        Log.e("Signal", "GetProperty  " + str + ": " + s0.l(str, false));
    }

    public void a0(int i2) {
        q.c cVarY = Y(i2);
        if (cVarY == null || !cVarY.a()) {
            return;
        }
        String strZ = z();
        String str = strZ + "a.w";
        String str2 = strZ + "a.h";
        s0.F(str, cVarY.f2164a + ProxyProperties.LOCAL_EXCL_LIST);
        s0.F(str2, cVarY.f2165b + ProxyProperties.LOCAL_EXCL_LIST);
        Log.e("Signal", "SetProperty  " + str + " = " + cVarY.f2164a + "  " + str2 + " = " + cVarY.f2165b);
        Log.e("Signal", "GetProperty  " + str + ": " + s0.m(str, 0) + " " + str2 + " : " + s0.m(str2, 0));
        Z(i2);
    }

    @Override // f1.q
    public boolean q(int[] iArr) {
        boolean z2;
        if (iArr == null || iArr.length < 2) {
            throw new RuntimeException("flushParams  data is NULL  or  data  size < 2 !!!! ");
        }
        if (this.f2158v) {
            return false;
        }
        synchronized (this.f2157u) {
            int length = iArr.length / 2;
            int i2 = 0;
            z2 = true;
            while (i2 < length) {
                int i3 = i2 * 2;
                int i4 = iArr[i3];
                int i5 = iArr[i3 + 1];
                int iV = V(i4, i5);
                boolean z3 = iV >= 0;
                Log.e("ImageDevice2", String.format("[ %02X,  %02X]", Integer.valueOf(i4), Integer.valueOf(i5)) + " ret : " + iV);
                if (!z3) {
                    z2 = z3;
                    break;
                }
                i2++;
                z2 = z3;
            }
            Log.e("ImageDevice2", "flushParams  END  data  length = " + iArr.length + " result:" + z2);
        }
        return z2;
    }
}
