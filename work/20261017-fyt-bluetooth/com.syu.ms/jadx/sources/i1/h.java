package i1;

/* JADX INFO: loaded from: classes2.dex */
public class h extends e {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int[] f2623h = {136, 85};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Integer f2624i = null;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Integer f2625j = null;

    @Override // i1.e
    public boolean a(int i2) {
        int iIntValue = this.f2624i.intValue() ^ this.f2625j.intValue();
        for (int i3 = 0; i3 < this.f2619d.intValue(); i3++) {
            iIntValue ^= this.f2618c[i3];
        }
        return (i2 & 255) == (iIntValue & 255);
    }

    @Override // i1.e
    public void b() {
        this.f2624i = null;
        this.f2625j = null;
        super.b();
    }

    @Override // i1.e
    public boolean c(int i2) {
        if (this.f2619d == null) {
            if (this.f2624i == null) {
                this.f2624i = Integer.valueOf(i2);
            } else if (this.f2625j == null) {
                this.f2625j = Integer.valueOf(i2);
            }
            Integer num = this.f2624i;
            if (num != null && this.f2625j != null) {
                this.f2619d = Integer.valueOf(((num.intValue() << 8) & 65280) | (this.f2625j.intValue() & 255));
            }
        }
        return this.f2619d != null;
    }

    @Override // i1.e
    public int[] f() {
        return this.f2623h;
    }
}
