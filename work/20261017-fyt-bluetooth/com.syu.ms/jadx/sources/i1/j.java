package i1;

import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
import app.App;
import java.util.Arrays;
import o1.s0;

/* JADX INFO: loaded from: classes2.dex */
public class j extends i1.a<b> implements f {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int[] f2644k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f2645l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f2646m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int[] f2647n;

    public class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f2648a;

        public a(int i2) {
            this.f2648a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.r(7, this.f2648a);
        }
    }

    public static class b extends e {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int[] f2650i = {60, 195};

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final int[] f2651j = {59, 179};

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int[] f2652h;

        public b(int[] iArr) {
            this.f2652h = new int[]{60, 195};
            if (s0.h(iArr, 1)) {
                this.f2652h = iArr;
            }
        }

        @Override // i1.e
        public boolean a(int i2) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.f2619d.intValue(); i4++) {
                i3 += this.f2618c[i4] & 255;
            }
            return ((~i3) & 255) == i2;
        }

        @Override // i1.e
        public boolean c(int i2) {
            return this.f2619d != null;
        }

        @Override // i1.e
        public int[] f() {
            return this.f2652h;
        }

        @Override // i1.e
        public boolean j() {
            this.f2619d = 7;
            return super.j();
        }
    }

    public j(int i2, int i3, int[] iArr) {
        super(i2, i3);
        this.f2644k = new int[3];
        this.f2645l = -1;
        this.f2646m = 0L;
        this.f2647n = new int[]{2, 0, 4, 1, 3};
        b bVar = new b(iArr);
        this.f2721a = bVar;
        bVar.h();
    }

    @Override // i1.f
    public void f(int i2) {
        a.f.p().v(" 333    动力澎湃    setMode = " + i2);
        try {
            if (!o1.u.Y0().equals("com.syu.driver")) {
                Intent intent = new Intent();
                intent.setClassName("com.syu.driver", "com.syu.driver.DriverActivity");
                intent.addCategory(Intent.CATEGORY_DEFAULT);
                intent.setFlags(268435456);
                App.c().startActivity(intent);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        o1.k.a().postDelayed(new a(i2), 1000L);
    }

    @Override // i1.s
    public boolean j(int i2, int[] iArr, float[] fArr, String[] strArr) {
        Log.e("Device", "handleCmd cmdCode : " + i2 + " params:" + Arrays.toString(iArr));
        if (i2 != 1) {
            if (i2 == 1030 && iArr != null) {
                w(iArr);
                return true;
            }
        } else if (iArr != null) {
            w(iArr);
            return true;
        }
        return false;
    }

    @Override // i1.s
    public void l(int[] iArr) {
        int i2;
        this.f2644k = Arrays.copyOfRange(iArr, 2, 5);
        int i3 = iArr[2];
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        int i4 = i3 & 15;
        Log.e("Device", "Ac Mode:" + this.f2645l);
        if (i4 >= 0) {
            int[] iArr2 = this.f2647n;
            if (i4 < iArr2.length && (this.f2645l != (i2 = iArr2[i4]) || jElapsedRealtime - this.f2646m > 3000)) {
                this.f2645l = i2;
                o1.u.o("syu.intent.action.gaoerfu", "driving_mode", i2);
                this.f2646m = jElapsedRealtime;
            }
        }
        r(1, this.f2644k);
    }

    public void w(int... iArr) {
        int[] iArrA = s0.a(8);
        int i2 = 0;
        System.arraycopy(iArr, 0, iArrA, 4, iArr.length);
        iArrA[0] = 60;
        iArrA[1] = 195;
        for (int i3 = 2; i3 < 7; i3++) {
            i2 += iArrA[i3] & 255;
        }
        iArrA[7] = (~i2) & 255;
        b0 b0Var = this.f2544h;
        if (b0Var != null) {
            b0Var.f(iArrA);
        }
    }
}
