package o1;

import android.os.SystemClock;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes2.dex */
public class v implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public long f16989c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList<a> f16988b = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f16990d = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f16987a = 5;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public o f16991a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f16992b;

        public a(o oVar, int i2) {
            this.f16991a = oVar;
            this.f16992b = i2;
        }
    }

    public synchronized void a(o oVar, int i2) {
        int iUptimeMillis;
        if (this.f16988b.size() == this.f16987a) {
            return;
        }
        if (oVar == null) {
            return;
        }
        int i3 = 0;
        if (i2 >= 0 || this.f16988b.size() == 0 || this.f16988b.get(0).f16992b >= 0) {
            while (i3 < this.f16988b.size() && i2 >= this.f16988b.get(i3).f16992b) {
                i3++;
            }
            this.f16988b.add(i3, new a(oVar, i2));
            if (i2 < 0) {
                this.f16990d++;
            } else if (i3 <= this.f16990d && (iUptimeMillis = i2 - ((int) (SystemClock.uptimeMillis() - this.f16989c))) >= 0) {
                j.e(l.a(), this);
                this.f16990d++;
                j.b(l.a(), this, iUptimeMillis);
            }
        }
    }

    public synchronized void b() {
        this.f16988b.clear();
        if (this.f16990d != -1) {
            this.f16990d = -1;
            j.e(l.a(), this);
        }
    }

    public synchronized void c(int i2, int i3) {
        if (this.f16988b.size() == 0) {
            if (this.f16990d != -1) {
                this.f16990d = -1;
                j.e(l.a(), this);
            }
            return;
        }
        if (this.f16988b.size() == 1) {
            if (i3 == 0) {
                this.f16988b.get(0).f16991a.a(0, null, null, null, null);
            }
        } else if (i3 == 0) {
            if (this.f16990d != -1) {
                this.f16990d = -1;
                j.e(l.a(), this);
            }
            this.f16989c = SystemClock.uptimeMillis();
            this.f16990d = 0;
            if (this.f16988b.get(0).f16992b < 0) {
                this.f16990d = 1;
            }
            j.b(l.a(), this, this.f16988b.get(this.f16990d).f16992b);
        } else {
            if (this.f16990d != -1) {
                this.f16990d = -1;
                j.e(l.a(), this);
            }
            int i4 = this.f16988b.get(0).f16992b;
            if (i4 < 0 && SystemClock.uptimeMillis() - this.f16989c < (-i4)) {
                this.f16988b.get(0).f16991a.a(0, null, null, null, null);
            }
        }
    }

    @Override // java.lang.Runnable
    public synchronized void run() {
        o oVar = null;
        int i2 = this.f16990d;
        if (i2 >= 0 && i2 < this.f16988b.size()) {
            oVar = this.f16988b.get(this.f16990d).f16991a;
        }
        o oVar2 = oVar;
        if (oVar2 == null || oVar2.a(0, null, null, null, null)) {
            this.f16990d = -1;
        } else {
            int i3 = this.f16990d + 1;
            this.f16990d = i3;
            if (i3 < this.f16988b.size()) {
                int i4 = this.f16988b.get(this.f16990d).f16992b - this.f16988b.get(this.f16990d - 1).f16992b;
                if (i4 == 0) {
                    run();
                } else {
                    j.b(l.a(), this, i4);
                }
            }
        }
    }
}
