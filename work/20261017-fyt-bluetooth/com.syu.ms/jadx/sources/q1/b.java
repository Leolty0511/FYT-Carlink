package q1;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17133b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17134c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17136e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f17132a = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17135d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17137f = false;

    public b(int i2, int i3) {
        this.f17133b = -1;
        this.f17134c = -1;
        this.f17136e = 3;
        this.f17134c = i2;
        this.f17133b = i2;
        this.f17136e = i3;
    }

    public void a() {
        this.f17132a = -1;
        this.f17137f = this.f17133b != -1;
        this.f17133b = -1;
        this.f17135d = 0;
    }

    public void b(int i2) {
        this.f17132a = this.f17133b;
        this.f17137f = true;
        this.f17133b = i2;
        this.f17135d = 0;
    }

    public int c() {
        return this.f17132a;
    }

    public int d() {
        return this.f17133b;
    }

    public boolean e() {
        return this.f17137f;
    }

    public boolean f(int i2) {
        return this.f17133b == i2;
    }

    public int g(int i2) {
        int i3 = this.f17133b;
        if (i3 != i2) {
            if (i2 == this.f17134c) {
                int i4 = this.f17135d + 1;
                this.f17135d = i4;
                if (i4 >= this.f17136e) {
                    this.f17135d = 0;
                }
            } else {
                this.f17135d = 1;
                this.f17134c = i2;
            }
            i2 = i3;
        } else {
            this.f17135d = 0;
        }
        boolean z2 = i2 != i3;
        this.f17137f = z2;
        if (z2) {
            this.f17132a = i3;
            this.f17133b = i2;
        }
        return i2;
    }

    public void h(int i2) {
        this.f17132a = this.f17133b;
        this.f17134c = i2;
        this.f17133b = i2;
    }

    public String toString() {
        return "Marker: [ mValue : " + this.f17133b + " tmpValue : " + this.f17134c + " mCount : " + this.f17135d + " passingGrade: " + this.f17136e + " ]";
    }
}
