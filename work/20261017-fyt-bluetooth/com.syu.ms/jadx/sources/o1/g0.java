package o1;

import android.content.SharedPreferences;
import app.App;

/* JADX INFO: loaded from: classes2.dex */
public class g0 implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public SharedPreferences f16860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f16861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f16862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f16863d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String[] f16864e;

    public g0(String str, int i2) {
        this.f16860a = App.c().getSharedPreferences(str, 0);
        this.f16861b = i2;
        this.f16863d = new int[i2];
        this.f16864e = new String[i2];
    }

    public void a() {
        j0.f16915j.c(this);
    }

    public int b(int i2, int i3) {
        try {
            return Integer.parseInt(c(i2, Integer.toString(i3)));
        } catch (Exception e2) {
            e2.printStackTrace();
            return i3;
        }
    }

    public String c(int i2, String str) {
        return this.f16860a.getString(Integer.toString(i2), str);
    }

    public int d(int i2, int i3) {
        if (i2 < 0 || i2 >= this.f16861b) {
            return i3;
        }
        synchronized (this.f16863d) {
            if ((this.f16863d[i2] & 65535) == 0) {
                return b(i2, i3);
            }
            try {
                return Integer.parseInt(this.f16864e[i2]);
            } catch (Exception e2) {
                e2.printStackTrace();
                return i3;
            }
        }
    }

    public void e(int i2, int i3) {
        f(i2, Integer.toString(i3));
    }

    public void f(int i2, String str) {
        if (i2 < 0 || i2 >= this.f16861b) {
            return;
        }
        synchronized (this.f16863d) {
            int[] iArr = this.f16863d;
            if ((iArr[i2] & 65535) != 0) {
                iArr[i2] = iArr[i2] & (-65536);
                this.f16864e[i2] = null;
            }
        }
        if (p0.g(c(i2, null), str)) {
            return;
        }
        this.f16860a.edit().putString(Integer.toString(i2), str).commit();
    }

    public void g(int i2, int i3) {
        h(i2, Integer.toString(i3));
    }

    public void h(int i2, String str) {
        if (i2 < 0 || i2 >= this.f16861b) {
            return;
        }
        synchronized (this.f16863d) {
            int[] iArr = this.f16863d;
            if ((iArr[i2] & 65535) == 0) {
                int i3 = this.f16862c;
                iArr[i3] = 65535 & iArr[i3];
                this.f16862c = i3 + 1;
                iArr[i3] = iArr[i3] | (i2 << 16);
            }
            iArr[i2] = iArr[i2] & (-65536);
            iArr[i2] = iArr[i2] | 2;
            this.f16864e[i2] = str;
        }
    }

    public void i() {
        synchronized (this.f16863d) {
            for (int i2 = 0; i2 < this.f16862c; i2++) {
                int[] iArr = this.f16863d;
                int i3 = (iArr[i2] >> 16) & 65535;
                if ((65535 & iArr[i3]) != 0) {
                    iArr[i3] = iArr[i3] & (-65536);
                    f(i3, this.f16864e[i3]);
                    this.f16864e[i3] = null;
                }
            }
            this.f16862c = 0;
        }
    }

    public void j() {
        j0.f16915j.d(this);
        i();
    }

    @Override // java.lang.Runnable
    public void run() {
        synchronized (this.f16863d) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f16862c; i3++) {
                int[] iArr = this.f16863d;
                int i4 = (iArr[i3] >> 16) & 65535;
                int i5 = (iArr[i4] & 65535) - 1;
                if (i5 >= 0) {
                    iArr[i4] = iArr[i4] & (-65536);
                    iArr[i4] = iArr[i4] | i5;
                    if (i5 == 0) {
                        f(i4, this.f16864e[i4]);
                        this.f16864e[i4] = null;
                    } else if (i2 == i3) {
                        i2++;
                    } else {
                        iArr[i2] = 65535 & iArr[i2];
                        iArr[i2] = (i4 << 16) | iArr[i2];
                        i2++;
                    }
                }
            }
            this.f16862c = i2;
        }
    }
}
