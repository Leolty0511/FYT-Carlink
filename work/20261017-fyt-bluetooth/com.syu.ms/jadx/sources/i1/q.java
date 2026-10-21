package i1;

import k0.qt;

/* JADX INFO: loaded from: classes2.dex */
public class q extends i1.a<a> {

    public class a extends e {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final int[] f2710h = {46};

        public a() {
        }

        @Override // i1.e
        public boolean a(int i2) {
            int iIntValue = (this.f2620e.intValue() & 255) + (this.f2619d.intValue() & 255);
            for (int i3 = 0; i3 < this.f2619d.intValue(); i3++) {
                iIntValue += this.f2618c[i3] & 255;
            }
            return (i2 & 255) == ((iIntValue & 255) ^ 255);
        }

        @Override // i1.e
        public boolean c(int i2) {
            Integer numValueOf = Integer.valueOf(i2 & 255);
            this.f2619d = numValueOf;
            return numValueOf != null;
        }

        @Override // i1.e
        public int[] f() {
            return this.f2710h;
        }

        @Override // i1.e
        public boolean j() {
            return true;
        }
    }

    public q(int i2, int i3) {
        super(i2, i3);
        a aVar = new a();
        this.f2721a = aVar;
        aVar.h();
    }

    @Override // i1.s
    public void l(int[] iArr) {
        if (iArr[0] != 3) {
            return;
        }
        qt.q(iArr[4], 0, 128, true, 127);
    }
}
