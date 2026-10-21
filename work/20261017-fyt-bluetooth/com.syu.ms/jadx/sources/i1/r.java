package i1;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public class r extends i1.a<Object> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f2712k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public e.e.a f2713l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f2714m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f2715n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f2716o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public o1.p f2717p;

    public class a implements o1.p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public e.e.a f2718a = new e.e.a(0, 0, 0);

        public a() {
        }

        @Override // o1.p
        public void d(Object obj) {
            if (obj == null) {
                return;
            }
            this.f2718a = (e.e.a) obj;
            Log.e("Device", "sx=" + this.f2718a.f1629b + " sy=" + this.f2718a.f1630c);
            e.e.a aVar = this.f2718a;
            int i2 = (aVar.f1629b * 255) / 800;
            int i3 = (aVar.f1630c * 255) / 480;
            Log.e("Device", "x=" + i2 + " y=" + i3);
            if (this.f2718a.f1628a == 0) {
                r.this.w(i2, i3);
            }
        }
    }

    public r(int i2, int i3) {
        super(i2, i3);
        this.f2712k = true;
        this.f2713l = new e.e.a(0, 0, 0);
        this.f2714m = 2;
        this.f2715n = 2;
        this.f2716o = 0L;
        a aVar = new a();
        this.f2717p = aVar;
        u0.c.O.a(aVar);
        Log.e("Device", "PluginCommonZhiHangTV");
    }

    @Override // i1.s
    public void l(int[] iArr) {
    }

    public void w(int i2, int i3) {
        int[] iArr = {1, 136, this.f2714m, this.f2715n, i2, i3, 3, 0, 0};
        Log.e("Device", "serial:" + o1.b0.e(iArr, 0, 9));
        b0 b0Var = this.f2544h;
        if (b0Var != null) {
            b0Var.f(iArr);
        }
    }
}
