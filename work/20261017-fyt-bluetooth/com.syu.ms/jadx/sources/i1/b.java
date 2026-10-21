package i1;

import android.content.Intent;
import android.os.SystemClock;
import android.util.Log;
import android.util.TimedRemoteCaller;
import app.App;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class b extends s<d> implements b0.a, f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Runnable f2569h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int[] f2570i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f2571j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public long f2572k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public b0 f2573l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2574m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public Runnable f2575n;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.v(63, 0, 0, 0, 0);
            o1.l.a().removeCallbacks(this);
            o1.l.a().postDelayed(this, TimedRemoteCaller.DEFAULT_CALL_TIMEOUT_MILLIS);
        }
    }

    /* JADX INFO: renamed from: i1.b$b, reason: collision with other inner class name */
    public class RunnableC0053b implements Runnable {
        public RunnableC0053b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar = b.this;
            int i2 = bVar.f2574m;
            if (i2 != 0) {
                bVar.f2574m = i2 + 1;
                o1.l.a().postDelayed(b.this.f2575n, 1000L);
            }
            b bVar2 = b.this;
            if (bVar2.f2574m > 10) {
                bVar2.f2574m = 0;
                bVar2.r(6, 1);
            }
        }
    }

    public class c implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ int f2578a;

        public c(int i2) {
            this.f2578a = i2;
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.r(7, this.f2578a);
        }
    }

    public static class d extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f2580h = {85, 170};

        @Override // i1.e
        public boolean a(int i2) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.f2619d.intValue(); i4++) {
                i3 += this.f2618c[i4] & 255;
            }
            return (i2 & 255) == (i3 & 255);
        }

        @Override // i1.e
        public void b() {
            super.b();
            this.f2619d = 7;
        }

        @Override // i1.e
        public boolean c(int i2) {
            return this.f2619d != null;
        }

        @Override // i1.e
        public int[] f() {
            this.f2619d = 7;
            return this.f2580h;
        }
    }

    public b(int i2, int i3) {
        super(i2, i3);
        this.f2569h = new a();
        this.f2570i = new int[]{2, 0, 4, 1, 3};
        this.f2571j = -1;
        this.f2572k = 0L;
        this.f2573l = null;
        this.f2574m = 0;
        this.f2575n = new RunnableC0053b();
        d dVar = new d();
        this.f2721a = dVar;
        dVar.h();
    }

    @Override // i1.b0.a
    public void a(b0 b0Var) {
        this.f2573l = b0Var;
    }

    @Override // i1.b0.a
    public void c(byte[] bArr) {
        b(bArr);
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
        o1.k.a().postDelayed(new c(i2), 1000L);
    }

    @Override // i1.s
    public s<d>.a i(int i2) {
        if (i2 < 0 || i2 > 7) {
            return null;
        }
        return super.i(i2);
    }

    @Override // i1.s
    public boolean j(int i2, int[] iArr, float[] fArr, String[] strArr) {
        Log.e("Device", "handleCmd cmdCode : " + i2 + " params:" + Arrays.toString(iArr));
        if (i2 != 1) {
            if (i2 != 1030 || iArr == null) {
                return false;
            }
            v(iArr);
            if (iArr[0] == 63) {
                this.f2574m = 1;
                o1.l.a().removeCallbacks(this.f2575n);
                o1.l.a().postDelayed(this.f2575n, 1000L);
            }
        } else {
            if (iArr == null) {
                return false;
            }
            v(iArr);
            if (iArr[0] == 63) {
                this.f2574m = 1;
                o1.l.a().removeCallbacks(this.f2575n);
                o1.l.a().postDelayed(this.f2575n, 1000L);
            }
        }
        return true;
    }

    @Override // i1.s
    public void l(int[] iArr) {
        int i2;
        int i3;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j2 = this.f2572k;
        if (jElapsedRealtime - j2 > 3000 && iArr != null && iArr.length > 0 && (i2 = iArr[0] & 15) >= 0) {
            int[] iArr2 = this.f2570i;
            if (i2 < iArr2.length && (this.f2571j != (i3 = iArr2[i2]) || jElapsedRealtime - j2 > 3000)) {
                this.f2571j = i3;
                o1.u.o("syu.intent.action.gaoerfu", "driving_mode", i3);
                this.f2572k = jElapsedRealtime;
            }
        }
        r(1, iArr);
    }

    public void v(int... iArr) {
        int length = iArr.length + 3 + 1;
        int[] iArr2 = new int[length];
        iArr2[0] = this.f2723c.intValue();
        iArr2[1] = 85;
        iArr2[2] = 170;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr2[3 + i2] = iArr[i2] & 255;
        }
        int i3 = length - 1;
        iArr2[i3] = 0;
        for (int i4 = 3; i4 < i3; i4++) {
            iArr2[i3] = iArr2[i3] + (iArr2[i4] & 255);
        }
        Log.e("Device", String.format("Device receicerId: %2X, cmdid: %2X", this.f2722b, this.f2723c) + " SEND DATA:" + o1.b0.e(iArr2, 0, length));
        b0 b0Var = this.f2573l;
        if (b0Var != null) {
            b0Var.f(iArr2);
            return;
        }
        for (int i5 = 0; i5 < 3; i5++) {
            z.k.s(iArr2);
        }
    }
}
